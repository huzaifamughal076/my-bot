
# ChatBot Application Blueprint

## Overview

This document outlines the architecture and implementation of a real-time chat application built with Flutter and Firebase. The application allows users to sign up, log in, and exchange messages in a live chat room.

## Core Features

*   **User Authentication:** Secure sign-up and login functionality using Firebase Authentication.
*   **Real-time Messaging:** Instant message delivery and synchronization powered by Cloud Firestore.
*   **Theme Toggle:** A user-friendly option to switch between light and dark modes.

## Project Structure

```
lib/
├── main.dart
├── screens/
│   ├── auth/
│   │   ├── auth_screen.dart
│   │   └── auth_wrapper.dart
│   └── chat/
│       ├── chat_screen.dart
│       └── components/
│           ├── chat_bubble.dart
│           └── message_composer.dart
└── services/
    ├── auth_service.dart
    └── firestore_service.dart
```

## Current Implementation Plan

### Objective: Fix auto-scrolling in the chat screen.

1.  **Add `ScrollController`:** Introduce a `ScrollController` to the `ChatScreen` to manage the scroll position of the message list.
2.  **Automatic Scrolling:** Implement a mechanism to automatically scroll to the end of the list whenever a new message is received.
