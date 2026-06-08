CREATE OR REPLACE VIEW public.v_consolidated_meat_sales AS
SELECT 
    company_name,
    business_type,
    order_date,
    DATE_TRUNC('month', order_date)::DATE as sales_month,
    customer_name,
    product_description,
    quantity_sold,
    unit_price,
    total_amount
FROM public.meat_company_sales;