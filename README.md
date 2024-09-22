# Salla iOS App Architecture

##  Overview

This repository demonstrates the architecture of the **Salla iOS Application**. It is designed using **Clean Architecture** principles and modularized into **Swift Packages (SP)**. Each core component exists in a separate package to ensure high reusability, testability, and maintainability. This approach enhances the flexibility of the system by isolating concerns into distinct modules that can evolve independently.

# Table of Contents

- [Overview](#overview)
- [Architecture Overview](#architecture-overview)
- [High-Level Design](#high-level-design)
- [Layers](#layers)
  - [Domain Layer](#domain-layer)
  - [Data Layer](#data-layer)
  - [Presentation Layer](#presentation-layer)
- [Components](#components)
- [Deep Dive: Brand Details Flow](#deep-dive-brand-details-flow)
- [Technology Stack](#technology-stack)
- [Setup](#setup)

# Architecture Overview

Our architecture adheres to Clean Architecture principles, organized in layers that decouple responsibilities to improve testability and maintainability. The structure enables easy modifications, whether for business rules, UI updates, or changes in external data sources.

# High-Level Design
The architecture is divided into several components:

- **App Module:** The root module responsible for initializing and coordinating various flows across the application.
- **Coordinator:** Manages the navigation between different screens and orchestrates the flow of data.
- **Image Loader:** Handles image loading and caching using third-party libraries like Kingfisher and SDWebImage.
- **Use Cases:** Contain business logic and are responsible for orchestrating data between the repository and the domain layer.
- **Repository:** Acts as a mediator between the data sources (API, database) and the use cases.
- **API Service:** Fetches data from the backend.
- **Persistence:** Manages local data storage using Core Data, Swift Data, or Realm.
![Salla Design Architecture](https://github.com/obadasemary/SallaChallenges/blob/main/Salla%20Design%20Architecture.png)
![Salla Design Architecture Interview](https://github.com/obadasemary/SallaChallenges/blob/main/Salla%20Design%20Architecture%20Interview.png)

# Layers

### Domain Layer
- **Entities:** These represent the core business objects, such as `Users`, and `Brands`.
- **Use Cases:** These are the application-specific rules that govern how the app interacts with the repository layer. They retrieve and manipulate data from repositories and provide it to the presentation layer.
### Data Layer
- **Repository:** Manages communication between the local data (Core Data, Realm) and remote sources (REST APIs). The repository abstracts this complexity from the use cases.
- **Network Layer:** Built using URLSession (optionally Alamofire for advanced cases), this layer interacts with the backend API, fetching data or sending updates.
- **Persistence:** Stores data locally, ensuring data is available offline and for faster access.
### Presentation Layer
- **ViewModel:** Manages the presentation logic and provides data from the use cases to the UI components.
- **Views:** SwiftUI views are responsible for rendering the UI and listening to state changes in the ViewModel.

# Deep Dive: Brand Details Flow

The **Brand Details Flow** manages the detailed information display of a specific brand.

- **SwiftUIView:** Displays the brand details, which include images, descriptions, and more.
- **ViewModel:** Provides data from the BrandUseCase to the UI. It listens for state changes and updates the view accordingly.
- **BrandUseCase:** Fetches detailed brand data by communicating with the BrandRepository.
- **BrandRepository:** Interacts with the Network Client or local storage to retrieve brand-related data.
- **Network Client:** Fetches detailed brand information from the backend REST API.
- **Storage:** Persists brand information locally for offline availability.
This flow demonstrates the robust and flexible structure designed for scalable information retrieval and display, ensuring both performance and maintainability.

# Technology Stack

- **Swift:** The primary language used in the application.
- **SwiftUI:** For building declarative user interfaces.
- **Combine/ Async Await:** Used for handling asynchronous programming.
- **URLSession / Alamofire:** Handles network requests.
- **Core Data / Swift Data / Realm:** Manages local data persistence.
- **Kingfisher / SDWebImage:** For image caching and loading.

# Setup

- Clone the repository:
```bash
git clone https://github.com/obadasemary/SallaChallenges.git

cd SallaChallenges
```
- Install dependencies (SPM)
- Open the project workspace
- Build and run the project on your simulator or device

# Conclusion

By isolating each component into **Swift Packages**, we ensure that the codebase is modular, scalable, and easy to test. Each package can evolve independently, ensuring flexibility in the face of future requirements. The **Clean Architecture** pattern guarantees a long-lasting, maintainable project that adheres to the **SOLID principles** of software design.




