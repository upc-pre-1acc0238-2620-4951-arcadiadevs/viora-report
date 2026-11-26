workspace "Viora" "Software architecture for mitigating olive alternate bearing in southern Peru." {
    !impliedRelationships false
    model {
        visitor = person "Visitor" "Evaluates Viora's value proposition, plans and mobile application downloads."
        producer = person "Olive Producer" "Manages olive plots, records field samples and harvests, carries out crop-load regulation and asks the field assistant."
        manager = person "Cooperative Technical Manager" "Supervises member plots by sector, prioritises technical assistance, sponsors members and plans collective olive intake."

        viora = softwareSystem "Viora" "Mobile platform for olive alternate-bearing mitigation: crop-load assessment, timely thinning advice, agroclimatic alerts, an AI field assistant, harvest settlement and cooperative intake planning." {
            tags "Viora"

            landing = container "Landing Page" "Presents Viora, subscription plans, the product videos and the mobile app download links." "Vite; HTML5, CSS3, JavaScript" {
                tags "Website"
            }

            native = container "Android Application" "Producer-focused application. Plots, offline sampling, thinning advice, phenology, agroclimatic and critical alerts, field assistant, harvest settlement and subscription." "Kotlin, Jetpack Compose; Android" {
                tags "MobileApp"
                nNavigation = component "App Navigation" "Selects the producer destinations by session; handles validated app links and the back stack." "Kotlin / Navigation Compose"
                nHome = component "Home UI" "Focused plot with its phase carousel and thinning window, today in the field from the daily summary, alerts card and the guided tour." "Jetpack Compose / ViewModel"
                nAccount = component "Account and Profile UI" "Sign-up, email verification, sign-in, password recovery and profile editing." "Jetpack Compose / ViewModel"
                nPlots = component "Plot Management UI" "Registers and edits plots; detects a disabled location service and compares the traced area with the declared one." "Jetpack Compose / ViewModel"
                nMap = component "Plot Map Adapter" "Encapsulates map rendering, location and polygon editing; returns GeoJSON to the plot screen." "Kotlin / Mapbox Maps SDK, Play Services Location"
                nSampling = component "Field Sampling UI" "Guides tree sampling; saves drafts locally and shows pending, rejected and synchronised rounds." "Jetpack Compose / ViewModel"
                nAgronomy = component "Agronomy and Phenology UI" "Shows weather, chill, the alternate-bearing index, the phenological calendar with phase date adjustments and the thinning advice and execution." "Jetpack Compose / ViewModel"
                nAlerts = component "Alerts UI" "Lists agroclimatic alerts, their detail and snooze, and the critical alerts preference." "Jetpack Compose / ViewModel"
                nAssistant = component "Field Assistant UI" "Shows the daily field summary and answers the producer's questions, with term help where they appear." "Jetpack Compose / ViewModel"
                nLogbook = component "Logbook UI" "Records field notes of each plot." "Jetpack Compose / ViewModel"
                nHarvest = component "Harvest Settlement UI" "Settles the campaign harvest, including discarded olives, and downloads its reports." "Jetpack Compose / ViewModel"
                nSubscription = component "Subscription UI" "Shows plans and entitlement; redeems a cooperative activation code with its consent; starts checkout." "Jetpack Compose / ViewModel"
                nCheckout = component "Hosted Checkout Coordinator" "Obtains a backend-created checkout URL, opens the browser and refreshes the payment status on return." "Kotlin / Android Custom Tabs"
                nWorkers = component "Background Workers" "Uploads pending samplings, settlements and field notes; checks critical alerts and the daily summary reminder; retries when connected." "Kotlin / WorkManager"
                nNotifications = component "Notification Publisher" "Posts high-priority critical alert notifications that open the alert detail." "Kotlin / NotificationCompat"
                nRepositories = component "Feature Repositories" "Provide account, plot, agronomy, alerts, assistant, logbook, harvest and subscription data; map DTOs and refresh authorised caches." "Kotlin / Coroutines / Flow"
                nLocal = component "Local Data Access" "Encapsulates Room DAOs, transactions, account-scoped cache and durable pending records." "Kotlin / Room DAO"
                nApiClient = component "Backend API Client" "Encapsulates REST calls, DTOs, file transfers, token refresh and typed transport errors." "Kotlin / Retrofit / OkHttp"
                nSession = component "Session Manager" "Manages session state, account scope and protected token storage; supports token rotation and logout." "Kotlin / DataStore"
            }

            cross = container "Cross-platform Application" "Cooperative technical manager-focused application. License and sponsorship codes, members, sectors, territorial risk, sector alerts, caliber ranges and intake projection." "Flutter, Dart" {
                tags "MobileApp"
                cNavigation = component "App Navigation" "Tab shell for Home, Risk, Intake and Members; full-screen routes over the tab bar; license gate before the workspace." "Dart / go_router"
                cAccount = component "Account and Profile UI" "Sign-up, email verification, sign-in, password recovery, profile and password editing." "Flutter widgets / Cubit"
                cLicense = component "License Activation UI" "Activates the cooperative license with the manager code and shows seats and hectares." "Flutter widgets / Cubit"
                cHome = component "Home Dashboard UI" "Valley traffic light with an icon legend, suggested visits naming each member, and the license summary." "Flutter widgets / Cubit"
                cMembers = component "Members and Codes UI" "Lists sponsored members and issues, shares and revokes activation codes, each shown whole on one line." "Flutter widgets / Cubit"
                cRisk = component "Territorial Risk UI" "Map and list of sectors, sector detail by priority and the member plot dossier in read-only mode." "Flutter widgets / Cubit"
                cSectors = component "Sector Management UI" "Lists the license's sectors and the plots pending confirmation; creates, renames and reviews sectors and assigns plots to them." "Flutter widgets / Cubit"
                cAlerts = component "Sector Alerts UI" "Lists the agroclimatic alerts of the sectors and opens the affected plots." "Flutter widgets / Cubit"
                cIntake = component "Intake Projection UI" "Projects the campaign intake with its confidence level, pending sampling and caliber breakdown." "Flutter widgets / Cubit"
                cCaliber = component "Caliber Ranges UI" "Edits the plant's caliber ranges in fruits per kilo and shows which range conflicts." "Flutter widgets / Cubit"
                cMap = component "Sector Map Adapter" "Encapsulates map rendering of sectors and plots and the manager's location." "Dart / mapbox_maps_flutter, geolocator"
                cUseCases = component "Use Cases and Repositories" "Application use cases and repositories per feature; return typed results and failures to the view models." "Dart / get_it"
                cSnapshots = component "Offline Snapshot Store" "Saves the license and the last copy of the cooperative views and serves them without connection." "Dart / Drift DAO"
                cApiClient = component "Backend API Client" "Encapsulates REST calls, DTOs, PDF downloads, token refresh and typed transport errors." "Dart / http"
                cSession = component "Session Manager" "Manages the session state and protected token storage; signs out on revocation." "Dart / flutter_secure_storage"
            }

            nativeDb = container "Android Local Database" "Caches plot data, assistant answers and daily summaries, and queues samples, settlements and field notes pending synchronisation." "SQLite, Room" {
                tags "Database"
            }
            crossDb = container "Cross-platform Local Database" "Keeps the license and the last copy of the cooperative views for offline reading." "SQLite, Drift" {
                tags "Database"
            }

            api = container "Backend API" "Modular monolith with one bounded context per module: IAM, profiles, subscription, orchard, telemetry (with the virtual node simulator), phenology, thinning, settlement, territory and assistant." "Java 21, Spring Boot, Spring AI; REST / OpenAPI" {
                tags "Backend"
                rest = component "REST Controllers" "Validate requests, resolve the user from the JWT and dispatch commands and queries to each bounded context; documented with OpenAPI." "Spring MVC / springdoc"
                iam = component "Identity and Access" "Sign-up, email verification, sign-in, JWT issuing and rotation, password recovery and app deep links." "Spring Security / Java; IAM"
                profiles = component "Profile Management" "Maintains personal details, country and validated contact information." "Spring / Java; Profiles"
                subscription = component "Subscription and Licensing" "Plans and entitlements, Mercado Pago checkout and webhooks, cooperative licenses, encrypted activation codes, redemption with data-sharing consent." "Spring / Java; Subscription"
                orchard = component "Orchard and Plot Management" "Plots with GeoJSON, variety and tree density, authorised access and the producer's field notes." "Spring / Java; Orchard"
                telemetry = component "Agroclimatic Telemetry" "Simulates the virtual plot nodes, imports hourly weather and forecasts, and raises frost and warmth alerts on schedule." "Spring / Java; Telemetry"
                phenology = component "Phenology and Bearing Analytics" "Harvest history and alternate-bearing index, winter chill, phenological calendar and phase date adjustments." "Spring / Java; Phenology"
                thinning = component "Thinning Advisory" "Sampling rounds with fruit caliber, sustainable crop-load calculation, prescriptions and execution against the biological window." "Spring / Java; Thinning"
                settlement = component "Harvest Settlement and Reporting" "Campaign settlements with discarded olives and sealed agronomic dossiers in PDF." "Spring / Java; Settlement, OpenPDF"
                territory = component "Territorial Intelligence" "Sectors, member plots with their member code, risk traffic light, sector alerts, caliber ranges and the intake projection with graded confidence." "Spring / Java; Territory"
                assistant = component "Field Assistant" "Answers producer questions and builds the scheduled daily summary from templates; a language model only rephrases them." "Spring AI / Java; Assistant"
                persistence = component "Persistence Adapters" "Used by every bounded context: one JPA repository per aggregate, and each context reads and writes only its own records." "Spring Data JPA"
            }

            db = container "Viora Database" "Stores accounts, plots, samples, telemetry and weather provenance, prescriptions, harvests, licenses, sponsorships, sectors, caliber ranges and assistant summaries." "PostgreSQL" {
                tags "Database"
            }
        }

        mapbox = softwareSystem "Mapbox" "External mapping service for visualising and delimiting olive plots and cooperative sectors." {
            tags "External"
        }
        weather = softwareSystem "Open-Meteo" "External weather service providing historical hourly weather data and forecasts." {
            tags "External"
        }
        llm = softwareSystem "Groq" "External language model service (OpenAI-compatible API) that rephrases the field assistant's answers and daily summaries." {
            tags "External"
        }
        payment = softwareSystem "Mercado Pago" "External payment service for individual producer subscriptions." {
            tags "External"
        }
        mail = softwareSystem "Brevo" "External transactional email service for email verification and account recovery." {
            tags "External"
        }
        distribution = softwareSystem "Firebase App Distribution" "External service that distributes the producer and manager mobile applications to testers." {
            tags "External"
        }

        # System context
        visitor -> viora "Explores the landing page, plans and app downloads"
        visitor -> distribution "Downloads the mobile applications"
        producer -> viora "Uses the Android application to record samples and harvests; reviews advice, alerts and the daily summary; asks the assistant"
        manager -> viora "Uses the cross-platform application to sponsor members; reviews territorial risk, sector alerts and intake projections"
        viora -> mapbox "Requests maps to locate, visualise and delimit plots and sectors"
        viora -> weather "Retrieves weather data for winter chill assessment and agroclimatic monitoring"
        viora -> llm "Requests natural-language rephrasing of assistant answers"
        viora -> payment "Initiates subscription payments and verifies payment status"
        payment -> viora "Notifies payment status changes"
        viora -> mail "Requests verification and password recovery emails"

        # Containers
        visitor -> landing "Reads product information" "HTTPS"
        landing -> distribution "Links to the tester invitations" "HTTPS"
        producer -> native "Records field work, reviews advice and alerts, asks the assistant"
        manager -> cross "Reviews member plots, sector risk and intake"
        native -> nativeDb "Reads cache; queues pending field data" "Room / SQL"
        cross -> crossDb "Reads and saves offline copies" "Drift / SQL"
        native -> api "Authenticates, syncs field data in background and uses domain services" "HTTPS / JSON; JWT"
        cross -> api "Authenticates and reads cooperative services" "HTTPS / JSON; JWT"
        api -> db "Reads and writes domain data" "SQL / JDBC; TLS"
        native -> mapbox "Loads and delimits plot maps" "HTTPS"
        cross -> mapbox "Loads sector and plot maps" "HTTPS"
        native -> payment "Opens hosted subscription checkout" "HTTPS / browser"
        api -> weather "Retrieves hourly history and forecasts" "HTTPS / JSON"
        api -> llm "Rephrases assistant answers and daily summaries" "HTTPS / JSON; OpenAI-compatible API"
        api -> payment "Creates checkout; verifies payments" "HTTPS / JSON"
        payment -> api "Notifies payment changes" "HTTPS / signed webhook"
        api -> mail "Requests verification and recovery emails" "HTTPS / JSON"

        # Android Application components
        producer -> nNavigation "Uses the producer destinations" "Touch"
        nNavigation -> nHome "Opens Home"
        nNavigation -> nAccount "Opens account and profile flows"
        nNavigation -> nPlots "Opens plot flows"
        nNavigation -> nSampling "Opens guided sampling"
        nNavigation -> nAgronomy "Opens agronomy, calendar and advice"
        nNavigation -> nAlerts "Opens alerts and notification targets"
        nNavigation -> nAssistant "Opens the assistant and daily summary"
        nNavigation -> nLogbook "Opens the logbook"
        nNavigation -> nHarvest "Opens harvest settlement"
        nNavigation -> nSubscription "Opens plans and code redemption"
        nNavigation -> nSession "Observes session and account" "Kotlin Flow"
        nPlots -> nMap "Renders plots and edits polygons"
        nMap -> mapbox "Loads map resources" "HTTPS / Mapbox SDK"
        nHome -> nRepositories "Reads the focused plot, phase, alerts and daily summary"
        nAccount -> nRepositories "Authenticates and manages profiles"
        nPlots -> nRepositories "Reads and updates plots"
        nSampling -> nRepositories "Saves rounds locally; observes sync state"
        nAgronomy -> nRepositories "Reads advice and calendar; submits execution and phase dates"
        nAlerts -> nRepositories "Reads, snoozes and dismisses alerts"
        nAssistant -> nRepositories "Reads the daily summary; asks questions"
        nLogbook -> nRepositories "Saves field notes"
        nHarvest -> nRepositories "Settles harvests; downloads reports"
        nSubscription -> nRepositories "Reads plans; redeems codes"
        nSubscription -> nCheckout "Starts hosted checkout"
        nCheckout -> nRepositories "Creates checkout; rechecks status"
        nCheckout -> payment "Opens hosted checkout in the browser" "HTTPS / Custom Tabs"
        nWorkers -> nRepositories "Uploads pending records; checks alerts and summary"
        nWorkers -> nNotifications "Publishes critical alerts"
        nRepositories -> nLocal "Observes and refreshes account-scoped cache"
        nRepositories -> nApiClient "Requests domain services"
        nRepositories -> nWorkers "Schedules uploads after a local commit"
        nRepositories -> nSession "Updates session after authentication; signs out"
        nLocal -> nativeDb "Reads and writes local records" "Room / SQL"
        nApiClient -> nSession "Reads scoped tokens; persists refreshed credentials"
        nApiClient -> api "Calls the mobile REST interface" "HTTPS / JSON; JWT"

        # Cross-platform Application components
        manager -> cNavigation "Uses the manager destinations" "Touch"
        cNavigation -> cAccount "Opens account and profile flows"
        cNavigation -> cLicense "Gates the workspace until the license is active"
        cNavigation -> cHome "Opens Home"
        cNavigation -> cRisk "Opens territorial risk"
        cNavigation -> cAlerts "Opens sector alerts"
        cNavigation -> cIntake "Opens the intake projection"
        cNavigation -> cMembers "Opens members and codes"
        cNavigation -> cSession "Observes session" "Dart Stream"
        cIntake -> cCaliber "Opens caliber ranges"
        cRisk -> cSectors "Opens sector management"
        cRisk -> cMap "Renders sectors and plots"
        cMap -> mapbox "Loads map resources" "HTTPS / Mapbox SDK"
        cAccount -> cUseCases "Authenticates and manages the profile"
        cLicense -> cUseCases "Activates the license"
        cHome -> cUseCases "Reads risk, visits and license"
        cMembers -> cUseCases "Reads members; issues and revokes codes"
        cRisk -> cUseCases "Reads sectors, plots and dossiers"
        cSectors -> cUseCases "Creates and renames sectors; assigns pending plots"
        cAlerts -> cUseCases "Reads sector alerts"
        cIntake -> cUseCases "Reads the intake projection"
        cCaliber -> cUseCases "Reads and replaces caliber ranges"
        cUseCases -> cApiClient "Requests cooperative services"
        cUseCases -> cSnapshots "Saves and reads offline copies"
        cUseCases -> cSession "Updates session after authentication; signs out"
        cSnapshots -> crossDb "Reads and writes local copies" "Drift / SQL"
        cApiClient -> cSession "Reads tokens; persists refreshed credentials"
        cApiClient -> api "Calls the REST interface" "HTTPS / JSON; JWT"

        # Backend API components
        nApiClient -> rest "Sends commands, queries and sync batches" "HTTPS / JSON; JWT"
        cApiClient -> rest "Sends queries and cooperative commands" "HTTPS / JSON; JWT"
        rest -> iam "Authenticates; validates JWT and roles"
        rest -> profiles "Manages profiles"
        rest -> subscription "Manages plans, checkout, licenses and codes"
        rest -> orchard "Manages plots and field notes"
        rest -> telemetry "Reads weather, readings and alerts"
        rest -> phenology "Reads chill, bearing index and calendar"
        rest -> thinning "Submits samplings; reads advice; confirms execution"
        rest -> settlement "Settles campaigns; downloads dossiers"
        rest -> territory "Manages sectors; reads risk, alerts and intake; replaces caliber ranges"
        rest -> assistant "Asks questions; reads the daily summary"
        payment -> subscription "Notifies payment changes" "HTTPS / signed webhook"
        subscription -> payment "Creates checkout; verifies payments" "HTTPS / JSON"
        iam -> mail "Requests verification and recovery emails" "HTTPS / JSON"
        telemetry -> weather "Imports hourly history and forecasts" "HTTPS / JSON"
        phenology -> weather "Reads archived temperatures" "HTTPS / JSON"
        assistant -> llm "Rephrases answers and daily summaries" "HTTPS / JSON; Spring AI OpenAI client"
        thinning -> orchard "Checks plot access and tree attributes" "ACL facade"
        thinning -> phenology "Reads floral potential and the biological window" "ACL facade"
        phenology -> telemetry "Reads qualified hourly temperatures" "ACL facade"
        settlement -> phenology "Publishes settled campaign yield" "ACL facade"
        territory -> subscription "Checks licenses, sponsorships and consent" "ACL facade"
        territory -> orchard "Reads member plots and geometry" "ACL facade"
        territory -> thinning "Reads crop load, samplings and caliber" "ACL facade"
        territory -> telemetry "Reads agroclimatic alerts" "ACL facade"
        assistant -> thinning "Reads advice and the thinning window" "ACL facade"
        assistant -> telemetry "Reads alerts and weather" "ACL facade"
        assistant -> phenology "Reads chill and the calendar" "ACL facade"
        subscription -> profiles "Reads the member producer's contact" "ACL facade"
        iam -> persistence "Reads and writes owned records"
        profiles -> persistence "Reads and writes owned records"
        subscription -> persistence "Reads and writes owned records"
        orchard -> persistence "Reads and writes owned records"
        telemetry -> persistence "Reads and writes owned records"
        phenology -> persistence "Reads and writes owned records"
        thinning -> persistence "Reads and writes owned records"
        settlement -> persistence "Reads and writes owned records"
        territory -> persistence "Reads and writes owned records"
        assistant -> persistence "Reads and writes owned records"
        persistence -> db "Reads and writes domain data" "SQL / JDBC; TLS"

        # Deployment
        deploymentEnvironment "Validation" {
            deploymentNode "Visitor device" "" "Android / iOS / desktop OS" {
                browser = infrastructureNode "Web Browser" "Requests and renders the landing page resources." "HTTPS-capable browser"
            }
            deploymentNode "Vercel" "" "Vercel" {
                deploymentNode "Static site hosting" "" "Vercel static hosting / CDN" {
                    landingInstance = containerInstance landing
                }
            }
            deploymentNode "Firebase" "" "Firebase" {
                firebase = infrastructureNode "Firebase App Distribution" "Distributes the signed producer and manager APKs to the tester groups, with separate app registrations and invitation links." "Firebase App Distribution" {
                    tags "Distribution"
                }
            }
            deploymentNode "Producer Android device" "" "Android" {
                deploymentNode "Android application sandbox" "" "Android runtime" {
                    nativeInstance = containerInstance native
                    nativeDbInstance = containerInstance nativeDb
                }
            }
            deploymentNode "Manager Android device" "" "Android" {
                deploymentNode "Flutter application sandbox" "" "Flutter engine / Android runtime" {
                    crossInstance = containerInstance cross
                    crossDbInstance = containerInstance crossDb
                }
            }
            deploymentNode "Render" "" "Render" {
                deploymentNode "Backend Web Service" "Auto-deploys the main branch." "Docker / Java 21 runtime / Spring Boot" {
                    apiInstance = containerInstance api
                }
            }
            deploymentNode "Filess.io" "" "Filess.io" {
                deploymentNode "PostgreSQL service" "" "PostgreSQL 15" {
                    dbInstance = containerInstance db
                }
            }
            deploymentNode "Mapbox cloud" "" "SaaS" {
                softwareSystemInstance mapbox
            }
            deploymentNode "Mercado Pago cloud" "" "Payment platform / test mode" {
                softwareSystemInstance payment
            }
            deploymentNode "Brevo cloud" "" "SaaS" {
                softwareSystemInstance mail
            }
            deploymentNode "Open-Meteo cloud" "" "SaaS" {
                softwareSystemInstance weather
            }
            deploymentNode "Groq cloud" "" "SaaS" {
                softwareSystemInstance llm
            }

            browser -> landingInstance "Requests landing page resources" "HTTPS"
            firebase -> nativeInstance "Delivers the signed producer APK for installation and update" "HTTPS / APK"
            firebase -> crossInstance "Delivers the signed manager APK for installation and update" "HTTPS / APK"
        }
    }
    views {
        systemContext viora "VioraSystemContext" {
            title "Viora - System Context"
            description "People and external software systems interacting with Viora. Scope: olive alternate-bearing mitigation."
            include *
            include distribution
            autoLayout tb 350 160
        }
        container viora "VioraContainer" {
            title "Viora - Container Diagram"
            description "Complete Container view: applications, data stores, users and all external providers."
            include visitor producer manager landing native cross nativeDb crossDb api db mapbox weather llm payment mail distribution
            autoLayout tb 350 200
        }
        container viora "VioraContainerIntegrations" {
            title "Viora - Container Integrations"
            description "External connections of the same containers. Internal stores and users are shown in VioraContainer."
            include landing native cross api mapbox weather llm payment mail distribution
            autoLayout tb 350 200
        }
        component api "VioraBackendComponents" {
            title "Viora - Backend API Components"
            description "One component per bounded context of the modular monolith and the REST interface; contexts collaborate through ACL facades. Every context persists through the persistence adapters, whose arrows are omitted for legibility."
            include *
            exclude "* -> persistence"
            autoLayout tb 300 200
        }
        component native "VioraAndroidComponents" {
            title "Viora - Android Application Components"
            description "Producer application: Compose screens, repositories, background workers and local persistence."
            include *
            autoLayout tb 300 200
        }
        component cross "VioraCrossPlatformComponents" {
            title "Viora - Cross-platform Application Components"
            description "Cooperative technical manager application: screens with Cubits, use cases, offline snapshots and the REST client."
            include *
            autoLayout tb 300 200
        }
        deployment viora "Validation" "VioraDeployment" {
            title "Viora - Deployment (validation environment)"
            description "Where each container runs during the academic validation."
            include *
            autoLayout tb 300 200
        }
        styles {
            element "Website" {
                shape WebBrowser
                height 320
            }
            element "MobileApp" {
                shape MobileDevicePortrait
                width 430
                height 490
            }
            element "Container" {
                color #1463A5
                stroke #1463A5
            }
            element "Component" {
                shape Component
                background #EFF6FC
                color #1463A5
                stroke #1463A5
            }
            element "Database" {
                shape Cylinder
                height 340
                background #EFF6FC
            }
            element "Backend" {
                shape Shell
                width 540
                height 310
                strokeWidth 5
            }
            element "Element" {
                shape RoundedBox
                background #ffffff
                color #344054
                stroke #667085
                strokeWidth 3
                width 420
                height 250
                fontSize 24
            }
            element "Person" {
                shape Person
                color #397146
                stroke #529957
                height 290
            }
            element "Viora" {
                color #1463A5
                stroke #1463A5
                strokeWidth 5
                width 520
                height 290
            }
            element "External" {
                color #9E3535
                stroke #B94A48
            }
            element "Infrastructure Node" {
                color #344054
                stroke #667085
            }
            element "Distribution" {
                background #FFF8E6
                color #A16B00
                stroke #C69214
            }
            relationship "Relationship" {
                color #667085
                thickness 3
                fontSize 22
                width 280
                routing Direct
            }
        }
    }
}
