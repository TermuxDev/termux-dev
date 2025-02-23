# **Core-Termux**  
Automate your web development environment setup in Termux!  

**Core-Termux** is a powerful tool designed to streamline the setup of a modern web development environment directly on your Android device using the Termux app. Whether you're a beginner or an experienced developer, this project will help you get started quickly and efficiently.

---

## **✨ Features**  

- 🚀 **Fully Automated Setup**  
  Get your development environment ready with just one command.  

- 📦 **Node.js Modules Management**  
  Automatically install and update essential global packages, including:  
  - `@devcorex/dev.x`  
  - `typescript`  
  - `@nestjs/cli`  
  - `prettier`  
  - `live-server`  
  - `localtunnel`  
  - `vercel`  

- 💡 **NvChad Integration**  
  Seamlessly configure and update your optimized Neovim setup for Termux.  

- 🔄 **Auto-Updates**  
  Keep Core-Termux and its dependencies up to date effortlessly.  

- ✅ **Compatibility**  
  Specifically designed for the Termux app, running on Android devices.

---

## **📋 Prerequisites**  

Before using Core-Termux, ensure the following:  
1. **Termux App** installed on your Android device.  
2. **Internet Connection** to fetch required packages and updates.  

---

## **🛠 Installation**  

1. **Clone the Repository**  
   Open Termux and run the following commands:  
   ```bash
   git clone https://github.com/DevCoreX/core-termux.git
   ```
   ```bash
   cd core-termux
   ```

2. **Run the Setup Script**
   Execute the update script to set up your environment:
   ```bash
   bash setup.sh
   ```

---

## **💻 Update**

**Update Environment**
To update Core-Termux, Node.js modules, and NvChad, simply run:

```bash
bash update.sh
```

**What the Script Does:**

Syncs the latest changes from the Core-Termux repository.

Installs or updates essential Node.js modules globally.

Fetches and updates your NvChad configuration.

---

## **📂 Project Structure**

Here's an overview of the Core-Termux directory structure:

```
core-termux/
├── config            # Configuration file for colors, variables, etc.
├── update.sh         # Main script to automate the setup and updates
├── README.md         # Project documentation
└── .gitignore        # Git ignore rules
```

---

## **📞 Support**

Core-Termux is developed and maintained by DevCoreX. For support, suggestions, or contributions:

Author: DevCoreX

Email: termuxdev.00@gmail.com

GitHub: Dev-CoreX

---

## **🎉 Contributing**

We welcome contributions from the community! Follow these steps to contribute:

1. ** Fork the repository.**


2. ** Create a new branch:**
```bash
git checkout -b feature/your-feature-name.
```


3. ** Commit your changes:**

```bash
git commit -m 'Add your feature here'.
```

4. **Push to your branch:**
```bash
git push origin feature/your-feature-name.
```

5. **Submit a pull request!**

---

## **📄 License**

This project is licensed under the MIT License. See the LICENSE file for details.

---

Thank you for using Core-Termux! Happy coding!
