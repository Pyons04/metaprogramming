def monthly_sales
  110
end

target_sales = 100

event "月間売上が高い" do
  monthly_sales > target_sales
end

event "月間売上が低い" do
  monthly_sales < target_sales
end

