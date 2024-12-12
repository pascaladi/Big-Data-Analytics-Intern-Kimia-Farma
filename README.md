# Performance Analytics Kimia Farma Business Year 2020-2023
## Introduction
This project was part of the Big Data Analytics Intern Program at Kimia Farma. This project aimed to evaluate the business performance of Kimia Farma from 2020 to 2023.

The available datasets for this project included:

1. ) kf_final_transaction: Customer transaction information
2. ) kf_inventory: Product stock information
3. ) kf_kantor_cabang: Branch information
4. ) kf_product: Product detail information

   
The problem statement focused on creating a comprehensive business performance dashboard, including:

1. ) Company revenue analysis
2. ) Transaction analysis per province
3. ) Branch performance 
4. ) Profitability analysis

   
The final output was a dashboard in Google Looker Studio that would help stakeholders monitor and analyze the business performance of Kimia Farma comprehensively.

## Tools Used
1. Google Big Query
2. Google Looker

## Analysis Table

I created a comprehensive analysis table by combining transaction data with product and branch information. I also calculated key business metrics such as net profit, net sales, and gross profit percentage.![image](https://github.com/user-attachments/assets/fd464978-6e8a-45a8-ac52-6f52d119b984)
  ### Key Aspect of the Query
  - Table Join : Merged transaction data with product information and branch detail that include location and rating
  - Calculated Fields : 1.) Gross Profit percentage (based on company threeshold) 2.) Net Sales (based on price minus discount price) 3.) Net Profit (Calculated as gross revenue minus cost of goods sold)
  - Distint Rating : Separated branch rating(![image](https://github.com/user-attachments/assets/e058f293-544c-45aa-82c3-66090faf1f78)
) and transaction rating (![image](https://github.com/user-attachments/assets/238cffb6-8cc1-45c3-bb35-0576e1b9b1b8)
)
## Dashboard Creation
I developed a dashboard to visualize and present data related to :
- Company Annual Net Profit
- Net Sales Perfomance
- Profitable and Demanded Products
- Distribution of Profit per Province
- Transaction Analysis on Customer Sentiment
For deeper analysis, I included data controls for Province and Product, enabling stakeholders to focus on specific product or provincial performance.
## Result
Dashboard link : https://lookerstudio.google.com/reporting/73a326ef-4c82-447f-a96f-52c9d4f01a95
Dashboard Preview
![image](https://github.com/user-attachments/assets/b5728ffe-0a9d-42cf-be09-e5bec8ac6d8e)
![image](https://github.com/user-attachments/assets/4235517d-2e83-44cf-abde-68e2daa0c5cc)

## Key Insights from the Dashboard
1.  Net profit for the company fluctuated from 2020 to 2023, with a relatively small difference of around Rp 103 million between the highest and lowest annual profit.
2.  Company recorded its highest annual profit of Rp 16,110,613,00 in 2022.
3.  The company generated a total of 672,458 transactions from 2020 to 2023.
4.  Psycholeptics, hypnotics, and sedative drugs were the most in-demand products and contributed the highest profit by 16.82% of the total profit.
5.  West Java province recorded the highest transaction value at Rp 94,869,594,00.
6.  A noteworthy finding that needs to be evaluated is the disparity between transaction ratings and branch ratings in several branches that have perfect rating.

## Contact
For any questions or feedback about this project, please feel free to reach out to me :
LinkedIn : Pascal Adi Chandraya Purba
Email : adichandrayapascal@yahoo.com


