[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/xoeTal9p)
# **Hello Tractor E-commerce Hackathon 🚜**

Welcome to the Hello Tractor E-commerce Hackathon! This repository is your central workspace for the challenge. Follow the structure below to organize and present your deliverables. Let’s innovate for Africa’s agricultural future!

---

## **Hackathon Overview 🌍**

### **Objective**
Design and develop a secondary marketplace e-commerce platform for buying and selling second-hand tractors, agri-implements, and connecting with certified tractor operators.

### **Key Features to Implement**
- **Homepage**: User-friendly showcase of featured listings with filters (price, location, brand).
- **User Registration**: Secure registration with email, phone, and social media verification.
- **Tractor Listings**: Create detailed listings with photos, specifications, history, and price.
- **Search & Filters**: Enable filtering by make, model, price, and location.
- **Messaging System**: Facilitate direct communication between buyers and sellers.
- **Seller Dashboard**: Track listing performance, inquiries, and sales.
- **Admin Panel**: Manage listings, approve content, and ensure platform quality.

### **Add-On Features**
- **Dealer Listings**: Highlight parts and equipment suppliers.
- **Certified Tractor Operators**: Connect tractor owners with trained operators.

---

## **Deliverables Checklist ✅**

Please organize and complete the following deliverables within this repository:

### 1. **Codebase**
- Ensure all code is well-structured and documented.
- Use folders for modularity and clarity. Include any configuration or setup files.

### 2. **Demo Video**
- Upload your video to YouTube, Vimeo, or as an mp4 file.
- **Link to Demo Video**: [Insert your video link here]

### 3. **Live Application URL**
- Deploy your application to a platform like Vercel, Netlify, or AWS.
- **Link to Live App**: [Insert live application URL here]

### 4. **Technical Documentation**
- Include setup instructions for running the project locally.
- Provide any architecture diagrams or flowcharts explaining the design.
- **Documentation**: Add details in a `docs/` folder or link to relevant markdown files.

### 5. **Project Report**
Complete this section in a separate ReadMe file `report.md`:
- **Project Name**: Tractorapp
- **Team Members**: @ogaedith
- **Tech Stack**: backend database and apis done with ruby on rails and postgresql   frontend done with flutter
- **Key Features**:

  
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

  # Get current user
  get "/current_user", to: "currents#index"
  
  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index]
    end
    
    resources :crops, only: [:index, :show, :create, :update, :destroy]    
    resources :products, only: [:index, :show, :create, :update, :destroy]
    resources :cart_items, only: [:index, :show, :create, :update, :destroy]
    resources :issues, only: [:index, :show, :create, :update, :destroy]
    resources :safety_procedures, only: [:index, :show, :create, :update, :destroy] do
      # Admin-specific actions for approving and rejecting safety procedures
      member do
        post :approve
        post :reject
      end
    end
  end

end
- **Challenges**: i had issues with server side slow to respond
- **Lessons Learned**: Ecommerce markrtplacr 

---

## **Submission Process 📥**

1. Complete your project and ensure all deliverables are present in this repository.
2. **Submission Deadline**: All submissions must be finalized by **Friday, Nov 22nd, 23:59 EAT**.
3. Submit your repository by ensuring all deliverables are present in this repository and locked by the deadline.

---

## **Important Links 🔗**
- [Hackathon Website](https://hackathon.hellotractor.com)
- [Hello Tractor Main Site](https://hellotractor.com)

---

## **Contact & Support 📞**
For any questions, reach out via Discord. Mentors will host office hours to assist with challenges and technical support.

---

**Good luck and happy hacking!** 🚀
