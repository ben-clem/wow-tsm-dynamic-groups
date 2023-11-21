- Auction->Post
  1. Bulk
      ```lua
      DailySold ≥ 1,000
      && MinAH > 1.1*VendorSell
      && Historical > 0.5*Destroy
      ```
  2. High
      ```lua
      DailySold ≥ 100
      && MinAH > 2*VendorSell
      && Historical > 2*Destroy
      ```
  3. Med
      ```lua
      DailySold ≥ 10
      && MinAH > 3*VendorSell
      && Historical > 3*Destroy
      ```
  4. Low
      ```lua
      DailySold ≥ 1
      && MinAH > 5*VendorSell
      && Historical > 5*Destroy
      ```
  5. Unit
      ```lua
      DailySold < 1
      && MinAH > 10*VendorSell
      && Historical > 10*Destroy
      ```
- Destroy
    ```lua
    Not Auctioning
    && Destroy > 1.5*VendorSell
    ```
- Vendor
  - Sell->Gray Trash
  - Sell->Not Auctioning & Not Destroying