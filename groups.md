- Auction->Post
  1. Bulk
      ```lua
      DailySold ≥ 1,000
      && ExpAHMin > 1.1*VendorSell
      && Historical > 0.5*Destroy
      ```
  2. High
      ```lua
      DailySold ≥ 100
      && ExpAHMin > 2*VendorSell
      && Historical > 0.75*Destroy
      ```
  3. Med
      ```lua
      DailySold ≥ 10
      && ExpAHMin > 3*VendorSell
      && Historical > 2.5*Destroy
      ```
  4. Low
      ```lua
      DailySold ≥ 1
      && ExpAHMin > 5*VendorSell
      && Historical > 5*Destroy
      ```
  5. Unit
      ```lua
      DailySold < 1
      && ExpAHMin > 10*VendorSell
      && Historical > 10*Destroy
      ```
- Destroy
    ```lua
    Not Auctioning
    && Destroy > 1.5*VendorSell
    ```
- Vendor
  - Sell->Gray Trash
  - Sell->All
    ```lua
    Not Auctioning
    && Not Destroying
    && ExpAHMin ≤ 10*VendorSell
    && Destroy ≤ 1.5*VendorSell
    ```