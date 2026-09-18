OUTPUT_DIR=build
PDF_DEFAULTS=pandoc/report.yaml
REFERENCE_DOC=pandoc/templates/reference.docx

ifeq ($(OS),Windows_NT)
  PHASE := $(shell powershell -NoProfile -Command "$$d = Get-Date -Format 'yyyyMMdd'; if ($$d -lt '20260919') { 'av1' } elseif ($$d -lt '20261005') { 'tb1' } elseif ($$d -lt '20261112') { 'av2' } else { 'tb2' }")
else
  PHASE := $(shell d=$$(date +%Y%m%d); if [ "$$d" -lt "20260919" ]; then echo "av1"; elif [ "$$d" -lt "20261005" ]; then echo "tb1"; elif [ "$$d" -lt "20261112" ]; then echo "av2"; else echo "tb2"; fi)
endif


JAVA_HOME ?= C:\Users\jahat\.jdks\openjdk-26.0.1
PLANTUML_JAR = lib/plantuml.jar
PUML_CLASS_SOURCES = $(wildcard report/assets/diagram-sources/class-diagrams/*.puml)
PUML_DB_SOURCES = $(wildcard report/assets/diagram-sources/database-diagrams/*.puml)
CLASS_DIAGRAM_OUT = report/assets/class-diagrams
DB_DIAGRAM_OUT = report/assets/database-design-diagrams

ifeq ($(OS),Windows_NT)
MKDIR_OUTPUT = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(OUTPUT_DIR)' | Out-Null"
MKDIR_CLASS_DIAGRAMS = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(CLASS_DIAGRAM_OUT)' | Out-Null"
MKDIR_DB_DIAGRAMS = powershell -NoProfile -Command "New-Item -ItemType Directory -Force -Path '$(DB_DIAGRAM_OUT)' | Out-Null"
RMDIR_OUTPUT = powershell -NoProfile -Command "Remove-Item -Recurse -Force -ErrorAction SilentlyContinue '$(OUTPUT_DIR)'"
else
MKDIR_OUTPUT = mkdir -p $(OUTPUT_DIR)
MKDIR_CLASS_DIAGRAMS = mkdir -p $(CLASS_DIAGRAM_OUT)
MKDIR_DB_DIAGRAMS = mkdir -p $(DB_DIAGRAM_OUT)
RMDIR_OUTPUT = rm -rf $(OUTPUT_DIR)
endif

PDF_FRONT = report/front-matter/00-cover-pandoc.md \
            report/front-matter/01-version-register.md \
            report/front-matter/02-collaboration-insights.md \
			report/front-matter/03-content.md \
            report/front-matter/04-student-outcome.md \
            report/front-matter/05-smart-objectives.md 



CHAPTERS = $(sort $(wildcard report/chapters/*/*.md))
BACK = $(sort $(wildcard report/back-matter/*.md))

PDF_FILES = $(PDF_FRONT) $(CHAPTERS) $(BACK)

PDF=$(OUTPUT_DIR)/upc-pre-202620-1acc0238-4951-ArcadiaDevs-report-$(PHASE).pdf
DOCX=$(OUTPUT_DIR)/report.docx

all: pdf docx

diagrams:
	@echo Generating class diagrams from PlantUML sources...
	$(MKDIR_CLASS_DIAGRAMS)
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(CLASS_DIAGRAM_OUT))" $(PUML_CLASS_SOURCES)
	@echo Done. $(words $(PUML_CLASS_SOURCES)) diagrams generated.

db-diagrams:
	@echo Generating database diagrams from PlantUML sources...
	$(MKDIR_DB_DIAGRAMS)
	"$(JAVA_HOME)/bin/java" -jar "$(PLANTUML_JAR)" -tpng -o "$(abspath $(DB_DIAGRAM_OUT))" $(PUML_DB_SOURCES)
	@echo Done. $(words $(PUML_DB_SOURCES)) database diagrams generated.

pdf:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) $(PDF_FILES) -o $(PDF)

docx:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) --reference-doc=$(REFERENCE_DOC) $(PDF_FILES) -o $(DOCX)

clean:
	$(RMDIR_OUTPUT)

single:
	$(MKDIR_OUTPUT)
	pandoc --defaults=$(PDF_DEFAULTS) $(SRC) -o $(OUTPUT_DIR)/single-output.pdf
