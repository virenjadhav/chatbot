# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_25_085922) do
  create_table "Chart", id: false, force: :cascade do |t|
    t.string "Code", limit: 255
    t.string "Account", limit: 255
    t.string "Type", limit: 255
    t.string "Description", limit: 255
    t.string "Category Code", limit: 255
    t.string "act_type", limit: 255
    t.string "Account Type", limit: 255
    t.string "Default Nature", limit: 255
    t.string "Group 1", limit: 255
    t.string "Group 2", limit: 255
    t.string "Tax Line", limit: 255
  end

  create_table "Combined", id: false, force: :cascade do |t|
    t.string "customer_code", limit: 255
  end

  create_table "NoRecordFound", id: false, force: :cascade do |t|
    t.varchar "store_code", limit: 50
  end

  create_table "account_periods", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 8, null: false
    t.varchar "period_flag", limit: 1, default: "C", null: false
    t.varchar "description", limit: 50
    t.datetime "from_date", precision: nil
    t.integer "account_year_id"
    t.datetime "to_date", precision: nil
    t.varchar "updated_by_code", limit: 25
  end

  create_table "account_years", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "year", limit: 10, null: false
    t.varchar "from_period", limit: 8, null: false
    t.varchar "to_period", limit: 8, null: false
    t.varchar "description", limit: 50
    t.varchar "updated_by_code", limit: 25
  end

  create_table "aisles", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.integer "warehouse_id"
  end

  create_table "application_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "ip_address", limit: 100
    t.varchar "activity", limit: 100
    t.varchar "action_name", limit: 1000
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.varchar "duration", limit: 100
    t.varchar "result", limit: 5000
    t.varchar "params"
  end

  create_table "attachments", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "table_name", limit: 30
    t.integer "trans_id"
    t.integer "user_id", null: false
    t.datetime "date_added", precision: nil
    t.varchar "subject", limit: 100
    t.varchar "notes", limit: 500
    t.varchar "file_name", limit: 500, null: false
    t.varchar "folder_name", limit: 500, null: false
    t.varchar "updated_by_code", limit: 25
    t.varchar "attachment_type", limit: 50
    t.index ["table_name", "trans_id"], name: "idx_attachments_trans_id"
  end

  create_table "audit_customer_invoices", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "inv_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "discount_date", precision: nil
    t.datetime "sale_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "clear_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "inv_type", limit: 4
    t.varchar "inv_no", limit: 18
    t.integer "customer_id"
    t.integer "soldto_id"
    t.integer "parent_id"
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "inv_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "clear_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "description", limit: 50
    t.varchar "customer_code", limit: 25
    t.varchar "parent_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.integer "invoice_rating"
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.varchar "ref_trans_type", limit: 1
    t.index ["id", "history_dt"], name: "IX_audit_customer_invoices", order: { history_dt: :desc }
  end

  create_table "audit_customer_receipt_lines", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "voucher_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "voucher_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "voucher_flag", limit: 1
    t.varchar "apply_flag", limit: 1
    t.integer "customer_receipt_id"
    t.integer "gl_account_id"
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.varchar "apply_to", limit: 10
    t.varchar "ref_no", limit: 20
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["id", "history_dt"], name: "IX_audit_customer_receipt_lines", order: { history_dt: :desc }
  end

  create_table "audit_customer_receipts", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "receipt_type", limit: 4
    t.integer "customer_id"
    t.integer "soldto_id"
    t.integer "parent_id"
    t.integer "bank_id"
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "received_amt", precision: 12, scale: 2
    t.decimal "applied_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.integer "deposit_no"
    t.varchar "bank_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "parent_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.varchar "ref_trans_type", limit: 1
    t.varchar "main_trans_no", limit: 18
    t.datetime "discount_date", precision: nil
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "payment_serial_no", limit: 6
    t.index ["id", "history_dt"], name: "IX_audit_customer_receipts", order: { history_dt: :desc }
  end

  create_table "audit_vendor_invoices", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "inv_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "discount_date", precision: nil
    t.datetime "sale_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 25
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "clear_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "inv_type", limit: 4
    t.varchar "inv_no", limit: 18
    t.integer "vendor_id"
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "inv_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "clear_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.decimal "ten99_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "description", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.index ["id", "history_dt"], name: "IX_audit_vendor_invoices", order: { history_dt: :desc }
  end

  create_table "audit_vendor_payment_lines", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "voucher_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "voucher_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "voucher_flag", limit: 1
    t.varchar "apply_flag", limit: 1
    t.integer "vendor_payment_id"
    t.integer "gl_account_id"
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.varchar "apply_to", limit: 10
    t.varchar "ref_no", limit: 20
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["id", "history_dt"], name: "IX_audit_vendor_payment_lines", order: { history_dt: :desc }
  end

  create_table "audit_vendor_payments", id: false, force: :cascade do |t|
    t.string "login_id", limit: 128
    t.datetime "history_dt", precision: nil, null: false
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "payment_type", limit: 4
    t.integer "vendor_id"
    t.integer "soldto_id"
    t.integer "bank_id"
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "applied_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.varchar "deposit_no", limit: 15
    t.varchar "bank_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.varchar "ref_trans_type", limit: 1
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.index ["id", "history_dt"], name: "IX_audit_vendor_payments", order: { history_dt: :desc }
  end

  create_table "authorized_transactions", id: false, force: :cascade do |t|
    t.string "Transaction_ID", limit: 255
    t.string "Transaction_Status", limit: 255
    t.string "Settlement_Amount", limit: 255
    t.string "Settlement_Currency", limit: 255
    t.string "Settlement_Date", limit: 255
    t.string "Authorization_Amount", limit: 255
    t.string "Authorization_Currency", limit: 255
    t.string "Submit_Date", limit: 255
    t.string "Authorization_Code", limit: 255
    t.string "Reference Transaction ID", limit: 255
    t.string "Transaction Type", limit: 255
    t.string "Address Verification Status", limit: 255
    t.string "Card Code Status", limit: 255
    t.string "Fraudscreen Applied", limit: 255
    t.string "Recurring Billing Transaction", limit: 255
    t.string "Partial Capture Status", limit: 255
    t.string "Card Number", limit: 255
    t.string "Expiration Date", limit: 255
    t.string "Bank Account Number", limit: 255
    t.string "Routing Number", limit: 255
    t.string "Total Amount", limit: 255
    t.string "Currency", limit: 255
    t.string "Invoice Number", limit: 255
    t.string "Invoice Description", limit: 255
    t.string "Customer First Name", limit: 255
    t.string "Customer Last Name", limit: 255
    t.string "Company", limit: 255
    t.string "Address", limit: 255
    t.string "City", limit: 255
    t.string "State", limit: 255
    t.string "ZIP", limit: 255
    t.string "Country", limit: 255
    t.string "Phone", limit: 255
    t.string "Fax", limit: 255
    t.string "Email", limit: 255
    t.string "Customer_ID", limit: 255
    t.string "Ship-To First Name", limit: 255
    t.string "Ship-To Last Name", limit: 255
    t.string "Ship-To Company", limit: 255
    t.string "Ship-To Address", limit: 255
    t.string "Ship-To City", limit: 255
    t.string "Ship-To State", limit: 255
    t.string "Ship-To ZIP", limit: 255
    t.string "Ship-To Country", limit: 255
    t.string "L2 - Tax", limit: 255
    t.string "L2 - Freight", limit: 255
    t.string "L2 - Duty", limit: 255
    t.string "L2 - Tax Exempt", limit: 255
    t.string "L2 - Purchase Order Number", limit: 255
    t.string "CAVV Results Code", limit: 255
    t.string "Business Day", limit: 255
    t.string "Order Number", limit: 255
    t.string "Available Card Balance", limit: 255
    t.string "Approved_Amount", limit: 255
    t.string "Market_Type", limit: 255
    t.string "Product", limit: 255
    t.string "Reserved7", limit: 255
    t.string "Reserved8", limit: 255
    t.string "Reserved9", limit: 255
    t.string "Reserved10", limit: 255
    t.string "Reserved11", limit: 255
    t.string "Reserved12", limit: 255
    t.string "Reserved13", limit: 255
    t.string "Reserved14", limit: 255
    t.string "Reserved15", limit: 255
    t.string "Reserved16", limit: 255
    t.string "Reserved17", limit: 255
    t.string "Reserved18", limit: 255
    t.string "Reserved19", limit: 255
    t.string "Reserved20", limit: 255
    t.string "F71", limit: 255
  end

  create_table "bank_bounce_checks", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "trans_type", limit: 4
    t.varchar "account_id", limit: 18
    t.varchar "account_code", limit: 25
    t.varchar "payto_name", limit: 50
    t.varchar "account_period_code", limit: 8, null: false
    t.decimal "debit_amt", precision: 12, scale: 2, null: false
    t.decimal "credit_amt", precision: 12, scale: 2, null: false
    t.varchar "remarks", limit: 255
    t.varchar "check_no", limit: 15
    t.datetime "check_date", precision: nil
    t.varchar "clear_flag", limit: 1
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "account_flag", limit: 1
    t.varchar "serial_no", limit: 6, default: "000"
    t.integer "bank_id"
    t.varchar "bank_code", limit: 25
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "ref_trans_no", limit: 18
    t.datetime "ref_trans_date", precision: nil
    t.varchar "ref_trans_type", limit: 4
    t.integer "bank_charge_account_id"
    t.varchar "bank_charge_account_code", limit: 25
    t.decimal "bank_charges_amt", precision: 12, scale: 2
    t.varchar "void_bounce_flag", limit: 1
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "idx_bank_bounce_checks_company_id_trans_no"
  end

  create_table "bank_checks", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "bank_id"
    t.integer "check_from"
    t.integer "check_to"
    t.varchar "payment_type", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "bank_reconciliations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "bank_id"
    t.varchar "bank_code", limit: 25
    t.datetime "from_date", precision: nil, null: false
    t.datetime "to_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.decimal "bank_balance", precision: 12, scale: 2, null: false
    t.decimal "additional_outstanding_amt", precision: 12, scale: 2
    t.decimal "bank_deposit_amt", precision: 12, scale: 2
    t.decimal "bank_withdrawal_amt", precision: 12, scale: 2
    t.datetime "trans_date", precision: nil
  end

  create_table "bank_transaction_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "description", limit: 50
    t.varchar "serial_no", limit: 6
    t.integer "bank_transaction_id"
    t.varchar "gl_account_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["bank_transaction_id"], name: "idx_bank_transaction_lines_bank_transaction_id"
  end

  create_table "bank_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "clear_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "clear_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "account_flag", limit: 1
    t.varchar "trans_type", limit: 4
    t.varchar "payment_type", limit: 4
    t.integer "account_id"
    t.integer "bank_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "check_no", limit: 50
    t.varchar "remarks", limit: 50
    t.varchar "ref_no", limit: 50
    t.varchar "payto_name", limit: 50
    t.varchar "comments", limit: 300
    t.varchar "serial_no", limit: 6
    t.varchar "deposit_no", limit: 25
    t.varchar "bank_code", limit: 25
    t.varchar "account_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "clear_id"
    t.varchar "payment_serial_no", limit: 6
    t.index ["company_id", "account_period_code", "trans_type", "trans_bk", "trans_no", "trans_date"], name: "idx_bank_transaction_trans_no"
    t.index ["company_id", "trans_type", "serial_no", "trans_no"], name: "ix_bank_transactions_1"
  end

  create_table "banks", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "bank_acct_no", limit: 30
    t.varchar "transit_no", limit: 30
    t.varchar "contact_nm", limit: 30
    t.varchar "city", limit: 20
    t.varchar "country", limit: 20
    t.varchar "zip", limit: 15
    t.varchar "state", limit: 25
    t.integer "gl_category_id"
    t.datetime "start_date", precision: nil
    t.varchar "account_type", limit: 2
    t.varchar "balance_type", limit: 2
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "payment_type", limit: 25
    t.varchar "gl_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "bank_type", limit: 1
    t.varchar "group1", limit: 100
    t.varchar "group2", limit: 100
    t.varchar "group3", limit: 100
    t.varchar "group4", limit: 100
  end

  create_table "bi_monthly_net_sales", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.char "account_period_code", limit: 8
    t.char "trans_bk", limit: 4
    t.char "trans_type", limit: 1
    t.varchar "customer_category_code", limit: 25
    t.integer "customer_category_id"
    t.varchar "customer_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_parent_code", limit: 25
    t.integer "customer_parent_id"
    t.varchar "customer_name", limit: 100
    t.char "customer_type", limit: 4
    t.varchar "customer_city", limit: 25
    t.varchar "customer_state", limit: 25
    t.varchar "customer_country", limit: 20
    t.char "customer_territory", limit: 4
    t.varchar "salesperson_code", limit: 25
    t.integer "salesperson_id"
    t.varchar "external_salesperson_code", limit: 25
    t.integer "external_salesperson_id"
    t.varchar "location_code", limit: 25
    t.char "catalog_item_type", limit: 1
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "catalog_item_code", limit: 25
    t.integer "catalog_item_id"
    t.varchar "catalog_item_name", limit: 200
    t.varchar "catalog_image_small", limit: 100
    t.decimal "total_item_qty", precision: 12, scale: 2
    t.decimal "avrg_item_price", precision: 16, scale: 4
    t.decimal "total_item_amt", precision: 16, scale: 2
    t.decimal "total_discount_amt", precision: 16, scale: 2
    t.decimal "total_insurance_amt", precision: 16, scale: 2
    t.decimal "total_ship_amt", precision: 16, scale: 2
    t.decimal "total_tax_amt", precision: 16, scale: 2
    t.decimal "total_other_amt", precision: 16, scale: 2
    t.decimal "total_net_amt", precision: 16, scale: 2
    t.decimal "avrg_item_cost", precision: 12, scale: 3
    t.char "customer_group1", limit: 4
    t.char "customer_group2", limit: 4
    t.index ["account_period_code", "trans_bk"], name: "ix_bi_monthly_net_sales_account_period_code_transBK"
  end

  create_table "buying_groups", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.char "code", limit: 25
    t.varchar "name", limit: 100
  end

  create_table "canceled_aim", id: false, force: :cascade do |t|
    t.datetime "Date Canceled", precision: nil
    t.string "Reason", limit: 255
    t.float "AIM ID"
    t.string "CONTACT", limit: 255
    t.string "DISTRIBUTOR NAME", limit: 255
    t.string "ADRRESS", limit: 255
    t.string "CITY", limit: 255
    t.string "STATE", limit: 255
    t.string "ZIP", limit: 255
    t.string "COUNTRY", limit: 255
    t.string "PHONE", limit: 255
    t.string "EMAIL", limit: 255
    t.string "ASI #", limit: 255
    t.string "PPAI #", limit: 255
    t.string "UPIC ", limit: 255
    t.string "SAGE #", limit: 255
    t.string "SALES VOLUME", limit: 255
    t.string "Top Market #1", limit: 255
    t.string "Top Market #2", limit: 255
    t.string "Top Market #3", limit: 255
    t.datetime "Date Joined AIM", precision: nil
  end

  create_table "catalog_attribute_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_attribute_id", null: false
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "description", limit: 100
    t.varchar "setup_item_code", limit: 25
    t.integer "setup_item_id"
    t.varchar "invn_item_code", limit: 25
    t.integer "invn_item_id"
    t.varchar "setup_item_code2", limit: 25
    t.integer "setup_item_id2"
    t.varchar "updated_by_code", limit: 25
    t.decimal "invn_item_qty", precision: 10, scale: 4, default: 1.0
    t.varchar "invn_item_unit", limit: 10
    t.varchar "asi_code", limit: 50
    t.varchar "asi_setup_item_code", limit: 50
    t.varchar "asi_setup_item_code2", limit: 50
    t.integer "seq_no"
    t.varchar "image_icon", limit: 100
    t.index ["catalog_attribute_id"], name: "idx_catalog_attribute_values_catalog_attribute_id"
  end

  create_table "catalog_attribute_values_20230309", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_attribute_id", null: false
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "description", limit: 100
    t.varchar "setup_item_code", limit: 25
    t.integer "setup_item_id"
    t.varchar "invn_item_code", limit: 25
    t.integer "invn_item_id"
    t.varchar "setup_item_code2", limit: 25
    t.integer "setup_item_id2"
    t.varchar "updated_by_code", limit: 25
    t.decimal "invn_item_qty", precision: 10, scale: 4
    t.varchar "invn_item_unit", limit: 10
    t.varchar "asi_code", limit: 50
    t.varchar "asi_setup_item_code", limit: 50
    t.varchar "asi_setup_item_code2", limit: 50
    t.integer "seq_no"
    t.varchar "image_icon", limit: 100
  end

  create_table "catalog_attributes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "description", limit: 100
    t.varchar "is_boolean", limit: 1, default: "N"
    t.varchar "setup_item_code", limit: 25
    t.integer "setup_item_id"
    t.varchar "setup_item_code2", limit: 25
    t.integer "setup_item_id2"
    t.varchar "missing_info_required_flag", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
    t.varchar "asi_code", limit: 50
    t.varchar "web_publish_flag", limit: 1
    t.index ["code"], name: "idx_catalog_attributes_code", unique: true
  end

  create_table "catalog_attributes_20230309", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "description", limit: 100
    t.varchar "is_boolean", limit: 1
    t.varchar "setup_item_code", limit: 25
    t.integer "setup_item_id"
    t.varchar "setup_item_code2", limit: 25
    t.integer "setup_item_id2"
    t.varchar "missing_info_required_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.varchar "asi_code", limit: 50
  end

  create_table "catalog_item_accessories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.integer "accessory_item_id", null: false
    t.decimal "qty", precision: 10, scale: 4
    t.decimal "cost", precision: 12, scale: 2
    t.varchar "accessory_item_code", limit: 25
    t.index ["catalog_item_id"], name: "idx_catalog_item_lines_catalog_item_id"
  end

  create_table "catalog_item_account_period_cost", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.varchar "account_period_code", limit: 8
    t.decimal "cost", precision: 12, scale: 4
    t.index ["catalog_item_code", "account_period_code"], name: "item_code_acc_code"
    t.index ["catalog_item_id", "account_period_code"], name: "item_id_acc_code"
  end

  create_table "catalog_item_attributes_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.integer "catalog_attribute_id", null: false
    t.integer "catalog_attribute_value_id", default: 0
    t.varchar "default_value", limit: 1, default: "N"
    t.integer "seq_no"
    t.varchar "updated_by_code", limit: 25
    t.index ["catalog_item_id", "catalog_attribute_id", "catalog_attribute_value_id"], name: "idx_ciav_catalog_item_id"
  end

  create_table "catalog_item_batch_castings", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_batch_id", default: 0
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "serial_no"
    t.varchar "setter", limit: 1
    t.varchar "supplier", limit: 1
    t.varchar "billed_wt_flag", limit: 1, default: "C"
    t.varchar "unit", limit: 4
    t.decimal "qty", precision: 10, scale: 4
    t.varchar "metal_type", limit: 4
    t.varchar "metal_color", limit: 4
    t.decimal "metal_size", precision: 7, scale: 2
    t.decimal "total_cost", precision: 10, scale: 2
    t.varchar "vendor_id", limit: 18
    t.varchar "vendor_item_id", limit: 18
    t.varchar "cast_cd", limit: 18
    t.varchar "duty_flag", limit: 1
    t.decimal "markup_per", precision: 12, scale: 2
    t.decimal "decimal", precision: 12, scale: 2, default: 0.0
    t.decimal "price", precision: 12, scale: 2
    t.varchar "remarks", limit: 250
    t.varchar "string", limit: 250
    t.decimal "casting_cost", precision: 12, scale: 2
    t.decimal "cost", precision: 12, scale: 3, default: 0.0
    t.decimal "labor", precision: 12, scale: 2, default: 0.0
    t.decimal "wt", precision: 12, scale: 4, default: 0.0
    t.decimal "finished_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "total_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "gold_surcharge", precision: 12, scale: 3, default: 0.0
    t.decimal "labor_wt", precision: 12, scale: 3, default: 0.0
    t.decimal "alloy_rate", precision: 12, scale: 2, default: 0.0
    t.varchar "casting_code", limit: 25
    t.integer "casting_id"
  end

  create_table "catalog_item_batch_diamonds", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_batch_id", default: 0
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "serial_no"
    t.varchar "shade", limit: 4
    t.varchar "cut", limit: 4
    t.varchar "stone_type", limit: 4
    t.varchar "stone_quality", limit: 25
    t.varchar "stone_setting", limit: 4
    t.varchar "stone_shape", limit: 25
    t.varchar "stone_size", limit: 25
    t.decimal "sieve_size", precision: 8, scale: 4
    t.varchar "color_from", limit: 25
    t.varchar "color_to", limit: 25
    t.varchar "clarity_from", limit: 25
    t.varchar "clarity_to", limit: 25
    t.varchar "sizemm_from", limit: 25
    t.varchar "sizemm_to", limit: 25
    t.varchar "from_width", limit: 25
    t.varchar "to_width", limit: 25
    t.varchar "stone_sizegroup", limit: 20
    t.decimal "stone_loss_amt", precision: 12, scale: 2
    t.decimal "qty", precision: 10, scale: 4
    t.decimal "wt", precision: 8, scale: 4
    t.decimal "total_wt", precision: 10, scale: 4
    t.decimal "cost", precision: 10, scale: 3
    t.decimal "price_per_pcs", precision: 10, scale: 2
    t.decimal "total_cost", precision: 10, scale: 2
    t.decimal "labor", precision: 8, scale: 3
    t.decimal "setting_cost", precision: 10, scale: 2
    t.decimal "cert_cost", precision: 10, scale: 2
    t.varchar "make", limit: 4
    t.varchar "setter", limit: 1
    t.varchar "supplier", limit: 1
    t.varchar "duty_flag", limit: 1
    t.varchar "cert_flag", limit: 1
    t.varchar "cert_lab_code", limit: 18
    t.varchar "flag1", limit: 1
    t.varchar "remarks", limit: 250
    t.varchar "string", limit: 25
    t.decimal "markup_per", precision: 12, scale: 2
    t.decimal "decimal", precision: 12, scale: 2
    t.decimal "price", precision: 12, scale: 2
    t.varchar "origin", limit: 25
    t.varchar "stone_category", limit: 25
    t.varchar "diamond_lot_number", limit: 25
    t.integer "diamond_lot_id"
  end

  create_table "catalog_item_batch_findings", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_batch_id", default: 0
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "serial_no"
    t.varchar "setter", limit: 1
    t.varchar "supplier", limit: 1
    t.varchar "billed_wt_flag", limit: 1, default: "C"
    t.varchar "unit", limit: 4
    t.decimal "qty", precision: 10, scale: 4
    t.varchar "metal_type", limit: 4
    t.varchar "metal_color", limit: 4
    t.decimal "metal_size", precision: 7, scale: 2
    t.decimal "wt", precision: 8
    t.decimal "finished_wt", precision: 8
    t.decimal "total_wt", precision: 10
    t.decimal "gold_surcharge", precision: 12
    t.decimal "cost", precision: 10
    t.decimal "labor", precision: 8
    t.decimal "total_cost", precision: 10, scale: 2
    t.decimal "labor_wt", precision: 12
    t.varchar "vendor_id", limit: 18
    t.varchar "vendor_item_id", limit: 18
    t.varchar "cast_cd", limit: 18
    t.varchar "duty_flag", limit: 1
    t.decimal "markup_per", precision: 12, scale: 2
    t.decimal "decimal", precision: 12, scale: 2
    t.decimal "price", precision: 12, scale: 2
    t.varchar "remarks", limit: 250
    t.varchar "string", limit: 1
    t.varchar "price_flag", limit: 1
    t.decimal "finding_cost", precision: 12, scale: 2
    t.varchar "finding_code", limit: 25
    t.integer "finding_id"
  end

  create_table "catalog_item_batch_others", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_batch_id", default: 0
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "serial_no"
    t.varchar "other_type", limit: 4
    t.varchar "other_code", limit: 25, null: false
    t.varchar "supplier", limit: 1
    t.varchar "setter", limit: 1
    t.varchar "duty_flag", limit: 1, default: "Y"
    t.decimal "cost", precision: 10, scale: 3
    t.decimal "qty", precision: 10, scale: 4
    t.decimal "total_cost", precision: 12, scale: 2
    t.varchar "remarks", limit: 255
    t.decimal "price", precision: 12, scale: 2
  end

  create_table "catalog_item_batch_stones", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_batch_id", default: 0
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "serial_no"
    t.varchar "shade", limit: 4
    t.varchar "cut", limit: 4
    t.varchar "stone_type", limit: 4
    t.varchar "stone_quality", limit: 25
    t.varchar "stone_setting", limit: 4
    t.varchar "stone_shape", limit: 25
    t.varchar "stone_size", limit: 25
    t.decimal "sieve_size", precision: 8, scale: 4
    t.varchar "color_from", limit: 25
    t.varchar "color_to", limit: 25
    t.varchar "clarity_from", limit: 25
    t.varchar "clarity_to", limit: 25
    t.varchar "sizemm_from", limit: 25
    t.varchar "sizemm_to", limit: 25
    t.varchar "from_width", limit: 25
    t.varchar "to_width", limit: 25
    t.varchar "stone_sizegroup", limit: 20
    t.decimal "stone_loss_amt", precision: 12, scale: 2
    t.decimal "qty", precision: 10, scale: 4
    t.decimal "wt", precision: 8, scale: 4
    t.decimal "total_wt", precision: 10, scale: 4
    t.decimal "cost", precision: 10, scale: 3
    t.decimal "price_per_pcs", precision: 10, scale: 3
    t.decimal "total_cost", precision: 10, scale: 2
    t.decimal "labor", precision: 8, scale: 3
    t.decimal "setting_cost", precision: 10, scale: 2
    t.decimal "cert_cost", precision: 10, scale: 2
    t.varchar "make", limit: 4
    t.varchar "setter", limit: 1
    t.varchar "supplier", limit: 1
    t.varchar "duty_flag", limit: 1
    t.varchar "cert_flag", limit: 1
    t.varchar "cert_lab_code", limit: 18
    t.varchar "flag1", limit: 1
    t.varchar "origin", limit: 25
    t.varchar "string", limit: 25
    t.varchar "treatment", limit: 25
    t.decimal "markup_per", precision: 12, scale: 2
    t.decimal "decimal", precision: 12, scale: 2
    t.decimal "price", precision: 12, scale: 2
    t.varchar "remarks", limit: 250
    t.varchar "stone_category", limit: 25
    t.varchar "diamond_lot_number", limit: 25
    t.integer "diamond_lot_id"
  end

  create_table "catalog_item_batches", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "types", limit: 25
    t.integer "type_id"
    t.integer "catalog_item_id"
    t.varchar "item_type", limit: 1, default: "I"
    t.varchar "serial_no", limit: 6
    t.integer "catalog_item_category_id"
    t.varchar "code", limit: 25
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "purchase_description", limit: 100
    t.varchar "sale_description", limit: 100
    t.varchar "barcode", limit: 25
    t.varchar "batch_no", limit: 25
    t.decimal "cost", precision: 12, scale: 2
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, default: "Y"
    t.integer "prefered_vendor_id"
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 5
    t.decimal "min_qty", precision: 10, scale: 4
    t.decimal "max_qty", precision: 10, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority", default: 0
    t.varchar "packet_require_yn", limit: 1, default: "N"
    t.varchar "string", limit: 25
    t.varchar "meta_tag", limit: 500
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "image_tiny", limit: 100
    t.varchar "production_type", limit: 1, default: "I"
    t.decimal "wt", precision: 10, scale: 4
    t.decimal "min_wt", precision: 10, scale: 4
    t.decimal "max_wt", precision: 10, scale: 4
    t.varchar "mm_size", limit: 25
    t.decimal "style_cost", precision: 10, scale: 2
    t.decimal "silver_base_rate", precision: 12, scale: 2
    t.decimal "silver_surcharge", precision: 12, scale: 2
    t.decimal "silver_total_rate", precision: 12, scale: 2
    t.decimal "silver_mu", precision: 12, scale: 2
    t.decimal "gold_base_rate", precision: 12, scale: 2
    t.decimal "gold_surcharge", precision: 12, scale: 2
    t.decimal "gold_total_rate", precision: 12, scale: 2
    t.decimal "gold_mu", precision: 12, scale: 2
    t.decimal "gold_increment", precision: 8, scale: 6
    t.decimal "platinum_base_rate", precision: 12, scale: 2
    t.decimal "platinum_surcharge", precision: 12, scale: 2
    t.decimal "platinum_total_rate", precision: 12, scale: 2
    t.decimal "platinum_mu", precision: 12, scale: 2
    t.decimal "palladium_base_rate", precision: 12, scale: 2
    t.decimal "palladium_surcharge", precision: 12, scale: 2
    t.decimal "palladium_total_rate", precision: 12, scale: 2
    t.decimal "palladium_mu", precision: 12, scale: 2
    t.varchar "diamond_qlty", limit: 25
    t.decimal "diamond_qty", precision: 10, scale: 4
    t.decimal "diamond_wt", precision: 10, scale: 4
    t.decimal "diamond_cost", precision: 10, scale: 2
    t.decimal "diamond_mu", precision: 5, scale: 2
    t.decimal "diamond_amt", precision: 10, scale: 2
    t.decimal "diamond_mu_retail", precision: 7, scale: 2
    t.decimal "diamond_amt_retail", precision: 10, scale: 2
    t.varchar "color_stone_type", limit: 25
    t.varchar "color_stone_shape", limit: 25
    t.varchar "color_stone_size", limit: 25
    t.varchar "color_stone_qlty", limit: 25
    t.decimal "color_stone_qty", precision: 10, scale: 4
    t.decimal "color_stone_wt", precision: 10, scale: 4
    t.decimal "color_stone_cost", precision: 7, scale: 2
    t.decimal "color_stone_mu", precision: 5, scale: 2
    t.decimal "color_stone_amt", precision: 10, scale: 2
    t.decimal "cstone_amt_retail", precision: 10, scale: 2
    t.decimal "cstone_mu_retail", precision: 10, scale: 2
    t.varchar "center_stone_size", limit: 25
    t.varchar "center_stone_type", limit: 25
    t.varchar "center_stone_shape", limit: 25
    t.varchar "center_stone_qlty", limit: 25
    t.decimal "ctrstone_wt", precision: 8, scale: 4
    t.decimal "center_stone_cost", precision: 10, scale: 2
    t.decimal "center_stone_mu", precision: 7, scale: 2
    t.decimal "center_stone_amt", precision: 10, scale: 2
    t.decimal "ctrstone_retail_mu", precision: 7, scale: 2
    t.decimal "ctrstone_retail_price", precision: 10, scale: 2
    t.decimal "finishing_labor_cost", precision: 10, scale: 2
    t.decimal "finishing_labor_mu", precision: 5, scale: 2
    t.decimal "finishing_labor_amt", precision: 10, scale: 2
    t.decimal "finishinglabor_mu_retail", precision: 7, scale: 2
    t.decimal "finishinglabor_amt_retail", precision: 10, scale: 2
    t.decimal "settinglabor_cost", precision: 10, scale: 2
    t.decimal "settinglabor_mu", precision: 5, scale: 2
    t.decimal "settinglabor_amt", precision: 10, scale: 2
    t.varchar "setter_instrucion", limit: 100
    t.decimal "settinglabor_mu_retail", precision: 7, scale: 2
    t.decimal "settinglabor_amt_retail", precision: 10, scale: 2
    t.decimal "other_cost", precision: 10, scale: 2
    t.decimal "other_mu", precision: 7, scale: 2
    t.decimal "other_amt", precision: 10, scale: 2
    t.decimal "other_mu_retail", precision: 7, scale: 2
    t.decimal "other_amt_retail", precision: 10, scale: 2
    t.decimal "total_cost", precision: 10, scale: 2
    t.decimal "markup_per", precision: 5, scale: 2
    t.decimal "margin_per", precision: 12, scale: 2
    t.decimal "margin_amt", precision: 12, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.varchar "mu_margin_flag", limit: 1
    t.varchar "certificate", limit: 1, default: "N"
    t.decimal "surcharge_per", precision: 12, scale: 2
    t.decimal "surcharge_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "duty_per", precision: 6, scale: 2
    t.decimal "duty_amt", precision: 12, scale: 2
    t.decimal "markup_per_retail", precision: 7, scale: 2
    t.decimal "retail_price", precision: 12, scale: 2
    t.varchar "casting_color", limit: 25
    t.decimal "casting_size", precision: 7, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.varchar "casting_type", limit: 25
    t.decimal "casting_rate", precision: 7, scale: 2
    t.decimal "casting_wt", precision: 10, scale: 2
    t.varchar "casting_unit", limit: 25
    t.decimal "casting_cost", precision: 10, scale: 2
    t.decimal "casting_mu", precision: 5, scale: 2
    t.decimal "casting_amt", precision: 10, scale: 2
    t.decimal "casting_mu_retail", precision: 7, scale: 2
    t.decimal "casting_amt_retail", precision: 10, scale: 2
    t.varchar "finding_color", limit: 25
    t.decimal "finding_size", precision: 7, scale: 2
    t.varchar "finding_type", limit: 25
    t.decimal "finding_rate", precision: 7, scale: 2
    t.decimal "finding_wt", precision: 10, scale: 2
    t.varchar "finding_unit", limit: 25
    t.decimal "finding_cost", precision: 10, scale: 2
    t.decimal "finding_mu", precision: 5, scale: 2
    t.decimal "finding_amt", precision: 10, scale: 2
    t.decimal "finding_mu_retail", precision: 7, scale: 2
    t.decimal "finding_amt_retail", precision: 10, scale: 2
    t.decimal "vendor_fixed_cost", precision: 10, scale: 2
    t.varchar "jewelry_design_flag", limit: 1, default: "J"
    t.integer "design_id"
    t.integer "integer"
    t.varchar "design_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.varchar "factory_model", limit: 25
    t.varchar "factory_code", limit: 25
    t.varchar "size_unit", limit: 4
    t.decimal "length", precision: 8, scale: 2
    t.decimal "breadth", precision: 8, scale: 2
    t.decimal "height", precision: 8, scale: 2
    t.varchar "size_country", limit: 25
    t.varchar "vendor_style_no", limit: 25
    t.varchar "price_flag", limit: 1, default: "V"
    t.decimal "color_stone_mu_retail", precision: 12, scale: 2
    t.decimal "color_stone_amt_retail", precision: 12, scale: 2
    t.decimal "center_stone_retail_mu", precision: 12, scale: 2
    t.decimal "center_stone_retail_price", precision: 12, scale: 2
    t.decimal "subtotal_cost", precision: 12, scale: 2
    t.decimal "vendor_po_cost", precision: 12, scale: 2
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "vendor_item_name", limit: 25
    t.varchar "udf1", limit: 255
    t.varchar "udf2", limit: 255
    t.varchar "udf3", limit: 255
    t.varchar "udf4", limit: 255
    t.varchar "udf5", limit: 255
    t.varchar "udf6", limit: 255
    t.varchar "udf7", limit: 255
    t.varchar "udf8", limit: 255
    t.varchar "udf9", limit: 255
    t.varchar "udf10", limit: 255
  end

  create_table "catalog_item_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "prefix", limit: 4
    t.varchar "suffix", limit: 4
    t.index ["code"], name: "idx_catalog_item_categories_code", unique: true
  end

  create_table "catalog_item_category_attributes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_category_id", null: false
    t.integer "catalog_attribute_id", null: false
    t.varchar "catalog_attribute_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["catalog_attribute_id", "catalog_attribute_code"], name: "idx_catalog_item_cat_attribute_id"
    t.index ["catalog_item_category_id"], name: "idx_catalog_item_cat_id"
  end

  create_table "catalog_item_chemicals", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.char "serial_no", limit: 6
    t.integer "chemical_id", null: false
    t.char "chemical_code", limit: 100
  end

  create_table "catalog_item_extensions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", default: 0
    t.decimal "wt", precision: 10, scale: 4
    t.decimal "min_wt", precision: 10, scale: 4
    t.decimal "max_wt", precision: 10, scale: 4
    t.varchar "mm_size", limit: 25
    t.decimal "style_cost", precision: 10, scale: 2
    t.decimal "silver_base_rate", precision: 12, scale: 2
    t.decimal "silver_surcharge", precision: 12, scale: 2
    t.decimal "silver_total_rate", precision: 12, scale: 2
    t.decimal "silver_mu", precision: 12, scale: 2
    t.decimal "gold_base_rate", precision: 12, scale: 2
    t.decimal "gold_surcharge", precision: 12, scale: 2
    t.decimal "gold_total_rate", precision: 12, scale: 2
    t.decimal "gold_mu", precision: 12, scale: 2
    t.decimal "gold_increment", precision: 8, scale: 6
    t.decimal "platinum_base_rate", precision: 12, scale: 2
    t.decimal "platinum_surcharge", precision: 12, scale: 2
    t.decimal "platinum_total_rate", precision: 12, scale: 2
    t.decimal "platinum_mu", precision: 12, scale: 2
    t.varchar "diamond_qlty", limit: 25
    t.decimal "diamond_qty", precision: 10, scale: 4
    t.decimal "diamond_wt", precision: 10, scale: 4
    t.decimal "diamond_cost", precision: 10, scale: 2
    t.decimal "diamond_mu", precision: 5, scale: 2
    t.decimal "diamond_amt", precision: 10, scale: 2
    t.decimal "diamond_mu_retail", precision: 7, scale: 2
    t.decimal "diamond_amt_retail", precision: 10, scale: 2
    t.varchar "color_stone_type", limit: 25
    t.varchar "color_stone_shape", limit: 25
    t.varchar "color_stone_size", limit: 25
    t.varchar "color_stone_qlty", limit: 25
    t.decimal "color_stone_qty", precision: 10, scale: 4
    t.decimal "color_stone_wt", precision: 10, scale: 4
    t.decimal "color_stone_cost", precision: 7, scale: 2
    t.decimal "color_stone_mu", precision: 5, scale: 2
    t.decimal "color_stone_amt", precision: 10, scale: 2
    t.varchar "center_stone_size", limit: 25
    t.varchar "center_stone_type", limit: 25
    t.varchar "center_stone_shape", limit: 25
    t.varchar "center_stone_qlty", limit: 25
    t.decimal "center_stone_cost", precision: 10, scale: 2
    t.decimal "center_stone_mu", precision: 7, scale: 2
    t.decimal "center_stone_amt", precision: 10, scale: 2
    t.decimal "finishing_labor_cost", precision: 10, scale: 2
    t.decimal "finishing_labor_mu", precision: 5, scale: 2
    t.decimal "finishing_labor_amt", precision: 10, scale: 2
    t.decimal "finishinglabor_mu_retail", precision: 7, scale: 2
    t.decimal "finishinglabor_amt_retail", precision: 10, scale: 2
    t.decimal "settinglabor_cost", precision: 10, scale: 2
    t.decimal "settinglabor_mu", precision: 5, scale: 2
    t.decimal "settinglabor_amt", precision: 10, scale: 2
    t.varchar "setter_instrucion", limit: 100
    t.decimal "settinglabor_mu_retail", precision: 7, scale: 2
    t.decimal "settinglabor_amt_retail", precision: 10, scale: 2
    t.decimal "other_cost", precision: 10, scale: 2
    t.decimal "other_mu", precision: 7, scale: 2
    t.decimal "other_amt", precision: 10, scale: 2
    t.decimal "other_mu_retail", precision: 7, scale: 2
    t.decimal "other_amt_retail", precision: 10, scale: 2
    t.decimal "total_cost", precision: 10, scale: 2
    t.decimal "markup_per", precision: 5, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.varchar "mu_margin_flag", limit: 1
    t.varchar "certificate", limit: 1, default: "N"
    t.decimal "surcharge_per", precision: 12, scale: 2
    t.decimal "surcharge_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "duty_per", precision: 6, scale: 2
    t.decimal "duty_amt", precision: 12, scale: 2
    t.decimal "markup_per_retail", precision: 7, scale: 2
    t.decimal "retail_price", precision: 12, scale: 2
    t.varchar "casting_color", limit: 25
    t.decimal "casting_size", precision: 7, scale: 2
    t.varchar "casting_type", limit: 25
    t.decimal "casting_rate", precision: 7, scale: 2
    t.decimal "casting_wt", precision: 10, scale: 2
    t.varchar "casting_unit", limit: 25
    t.decimal "casting_cost", precision: 10, scale: 2
    t.decimal "casting_mu", precision: 5, scale: 2
    t.decimal "casting_amt", precision: 10, scale: 2
    t.decimal "casting_mu_retail", precision: 7, scale: 2
    t.decimal "casting_amt_retail", precision: 10, scale: 2
    t.varchar "finding_color", limit: 25
    t.decimal "finding_size", precision: 7, scale: 2
    t.varchar "finding_type", limit: 25
    t.decimal "finding_rate", precision: 7, scale: 2
    t.decimal "finding_wt", precision: 10, scale: 2
    t.varchar "finding_unit", limit: 25
    t.decimal "finding_cost", precision: 10, scale: 2
    t.decimal "finding_mu", precision: 5, scale: 2
    t.decimal "finding_amt", precision: 10, scale: 2
    t.decimal "finding_mu_retail", precision: 7, scale: 2
    t.decimal "finding_amt_retail", precision: 10, scale: 2
    t.decimal "vendor_fixed_cost", precision: 10, scale: 2
    t.decimal "color_stone_mu_retail", precision: 12, scale: 2
    t.decimal "color_stone_amt_retail", precision: 12, scale: 2
    t.decimal "center_stone_retail_mu", precision: 12, scale: 2
    t.decimal "center_stone_retail_price", precision: 12, scale: 2
    t.decimal "center_stone_wt", precision: 12, scale: 4
    t.decimal "subtotal_cost", precision: 12, scale: 2
    t.decimal "vendor_po_cost", precision: 12, scale: 2
    t.decimal "palladium_base_rate", precision: 12, scale: 2
    t.decimal "palladium_surcharge", precision: 12, scale: 2
    t.decimal "palladium_total_rate", precision: 12, scale: 2
    t.decimal "palladium_mu", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
    t.varchar "jewelry_design_flag", limit: 1, default: "J"
    t.integer "design_id"
    t.varchar "design_code", limit: 25
    t.varchar "item_created", limit: 1, default: "N"
    t.varchar "factory_model", limit: 25
    t.varchar "factory_code", limit: 25
    t.varchar "size_unit", limit: 4
    t.decimal "length", precision: 8, scale: 2, default: 0.0
    t.decimal "breadth", precision: 8, scale: 2, default: 0.0
    t.decimal "height", precision: 8, scale: 2, default: 0.0
    t.varchar "size_country", limit: 25
    t.varchar "price_flag", limit: 1, default: "V"
    t.varchar "line_sheet_price_flag", limit: 1, default: "N"
    t.decimal "wholesale_price", precision: 12, scale: 2
    t.varchar "metal_type", limit: 50
    t.varchar "metal_color", limit: 50
    t.varchar "size_code", limit: 10
    t.decimal "stone1_long_dimension", precision: 12, scale: 2
    t.varchar "stone1_type", limit: 100
    t.varchar "stone2_type", limit: 100
    t.varchar "stone3_type", limit: 100
    t.varchar "stone4_type", limit: 100
    t.varchar "stone5_type", limit: 100
    t.varchar "palette", limit: 100
    t.varchar "parent_notes", limit: 2000
    t.varchar "item_notes", limit: 2000
    t.varchar "group", limit: 50
    t.varchar "subgroup", limit: 50
    t.index ["catalog_item_id"], name: "catalog_item_ext_catalog_item_id"
  end

  create_table "catalog_item_four51_setups", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.char "serial_no", limit: 3
    t.integer "catalog_item_id", null: false
    t.integer "setup_item_id", null: false
    t.varchar "setup_item_code", limit: 25, null: false
    t.decimal "setup_item_price", precision: 12, scale: 2, default: 0.0, null: false
    t.char "is_quantity_dependable", limit: 1, default: "N"
  end

  create_table "catalog_item_groups", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "group_type", limit: 25
    t.index ["code"], name: "idx_catalog_item_groups_code", unique: true
  end

  create_table "catalog_item_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.integer "assemble_item_id", null: false
    t.decimal "qty", precision: 10, scale: 4
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "assemble_item_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["catalog_item_id"], name: "catalog_item_lines_catalog_item_id"
  end

  create_table "catalog_item_location_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "location_id"
    t.varchar "location_code", limit: 25
    t.varchar "aisle", limit: 25
    t.varchar "section", limit: 25
    t.varchar "rack_location", limit: 25
    t.integer "catalog_item_id"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "location_type", limit: 25
    t.index ["catalog_item_id", "location_id", "location_code"], name: "idx_catalog_item_loc_catalog_item_id"
  end

  create_table "catalog_item_notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "trans_date", precision: nil
    t.integer "catalog_item_id"
    t.varchar "serial_no", limit: 6
    t.varchar "daily_notes", limit: 100
    t.index ["catalog_item_id"], name: "idx_catalog_item_notes_catalog_item_id"
  end

  create_table "catalog_item_package_extensions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id"
    t.varchar "package_profile_code", limit: 25, null: false
    t.varchar "carton_size", limit: 50
    t.decimal "pcs_per_carton", precision: 12, scale: 2
    t.decimal "carton_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "carton_length", precision: 10, scale: 2, default: 0.0
    t.decimal "carton_width", precision: 10, scale: 2, default: 0.0
    t.decimal "carton_height", precision: 10, scale: 2, default: 0.0
    t.varchar "wt_unit", limit: 25
    t.char "portal_show_flag", limit: 1, default: "Y"
    t.index ["catalog_item_id"], name: "idx_catalog_item_pkg_ext_pkg_id"
  end

  create_table "catalog_item_packages", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id"
    t.varchar "carton_size", limit: 50
    t.decimal "pcs_per_carton", precision: 12, scale: 2
    t.decimal "carton_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "carton_length", precision: 10, scale: 2, default: 0.0
    t.decimal "carton_width", precision: 10, scale: 2, default: 0.0
    t.decimal "carton_height", precision: 10, scale: 2, default: 0.0
    t.varchar "wt_unit", limit: 25
    t.char "web_default_package", limit: 1, default: "N", null: false
    t.index ["catalog_item_id"], name: "idx_catalog_item_pkg_catalog_item_id"
  end

  create_table "catalog_item_packet_extensions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_packet_id", default: 0
    t.varchar "metal_type", limit: 25
    t.varchar "metal_color", limit: 25
    t.decimal "total_diamond_amt", precision: 12, scale: 2
    t.decimal "metal_base_rate", precision: 12, scale: 2
    t.decimal "metal_surcharge", precision: 12, scale: 2
    t.decimal "metal_total_rate", precision: 12, scale: 2
    t.decimal "metal_increment", precision: 8, scale: 6
    t.varchar "casting_unit", limit: 25
    t.decimal "casting_wt", precision: 10, scale: 4
    t.decimal "casting_cost", precision: 12, scale: 2
    t.decimal "casting_amt", precision: 12, scale: 2
    t.varchar "finding_unit", limit: 25
    t.decimal "finding_wt", precision: 10, scale: 4
    t.decimal "finding_cost", precision: 12, scale: 2
    t.decimal "finding_amt", precision: 12, scale: 2
    t.decimal "setting_amt", precision: 12, scale: 2
    t.decimal "handling_amt", precision: 12, scale: 2
    t.decimal "labor_amt", precision: 12, scale: 2
    t.decimal "tag_price", precision: 12, scale: 2
    t.decimal "diamond_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "diamond_wt", precision: 10, scale: 4
    t.decimal "color_stone_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "color_stone_wt", precision: 10, scale: 4
    t.varchar "certificate", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
    t.integer "catalog_item_batch_id"
  end

  create_table "catalog_item_packet_update_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "serial_no", limit: 6
    t.integer "catalog_item_id", null: false
    t.varchar "code", limit: 25, null: false
    t.varchar "description", limit: 100, null: false
    t.varchar "attribute1", limit: 50
    t.varchar "attribute2", limit: 50
    t.varchar "attribute3", limit: 50
    t.varchar "attribute4", limit: 50
    t.varchar "attribute5", limit: 50
    t.varchar "attribute6", limit: 50
    t.varchar "attribute7", limit: 50
    t.varchar "attribute8", limit: 50
    t.varchar "attribute9", limit: 50
    t.varchar "attribute10", limit: 50
    t.integer "catalog_item_packet_update_id"
    t.integer "catalog_item_packet_id", null: false
    t.varchar "updated_by_code", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.index ["catalog_item_packet_update_id"], name: "idx_catalog_item_packet_update_lines_catalog_item_packet_update_id"
  end

  create_table "catalog_item_packet_updates", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "file_name", limit: 100
    t.varchar "remarks", limit: 200
    t.varchar "account_period_code", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "catalog_item_packets", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "code", limit: 25, null: false
    t.varchar "attribute1", limit: 50
    t.varchar "attribute2", limit: 50
    t.varchar "attribute3", limit: 50
    t.varchar "attribute4", limit: 50
    t.varchar "attribute5", limit: 50
    t.varchar "attribute6", limit: 50
    t.varchar "attribute7", limit: 50
    t.varchar "attribute8", limit: 50
    t.varchar "attribute9", limit: 50
    t.varchar "attribute10", limit: 50
    t.decimal "price", precision: 12, scale: 2, default: 0.0
    t.varchar "description", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.varchar "catalog_item_code", limit: 25
    t.index ["catalog_item_id"], name: "catalog_item_packets_catalog_item_id"
  end

  create_table "catalog_item_prices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", default: 0
    t.datetime "from_date", precision: nil, null: false
    t.datetime "to_date", precision: nil, null: false
    t.decimal "price", precision: 12, scale: 3
    t.varchar "price_level", limit: 1
    t.integer "quantity"
    t.decimal "column1", precision: 12, scale: 3
    t.decimal "column2", precision: 12, scale: 3
    t.decimal "column3", precision: 12, scale: 3
    t.decimal "column4", precision: 12, scale: 3
    t.decimal "column5", precision: 12, scale: 3
    t.decimal "column6", precision: 12, scale: 3
    t.decimal "column7", precision: 12, scale: 3
    t.decimal "column8", precision: 12, scale: 3
    t.decimal "column9", precision: 12, scale: 3
    t.decimal "column10", precision: 12, scale: 3
    t.varchar "updated_by_code", limit: 25
    t.decimal "blank_good_price", precision: 12, scale: 3, default: 0.0
    t.varchar "column1_discount_code", limit: 5
    t.varchar "column2_discount_code", limit: 5
    t.varchar "column3_discount_code", limit: 5
    t.varchar "column4_discount_code", limit: 5
    t.varchar "column5_discount_code", limit: 5
    t.varchar "column6_discount_code", limit: 5
    t.varchar "column7_discount_code", limit: 5
    t.varchar "column8_discount_code", limit: 5
    t.varchar "column9_discount_code", limit: 5
    t.varchar "column10_discount_code", limit: 5
    t.varchar "blank_good_discount_code", limit: 5
    t.decimal "column1_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column2_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column3_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column4_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column5_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column6_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column7_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column8_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column9_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "column10_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.decimal "blank_good_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.integer "end_quantity_price", default: 0
    t.decimal "column11", precision: 12, scale: 3
    t.decimal "column12", precision: 12, scale: 3
    t.decimal "column13", precision: 12, scale: 3
    t.decimal "column14", precision: 12, scale: 3
    t.decimal "column15", precision: 12, scale: 3
    t.varchar "column11_discount_code", limit: 5
    t.varchar "column12_discount_code", limit: 5
    t.varchar "column13_discount_code", limit: 5
    t.varchar "column14_discount_code", limit: 5
    t.varchar "column15_discount_code", limit: 5
    t.decimal "column11_price_before_discount", precision: 12, scale: 3
    t.decimal "column12_price_before_discount", precision: 12, scale: 3
    t.decimal "column13_price_before_discount", precision: 12, scale: 3
    t.decimal "column14_price_before_discount", precision: 12, scale: 3
    t.decimal "column15_price_before_discount", precision: 12, scale: 3
    t.integer "next_quantity_price"
    t.varchar "strike_price_flag", limit: 1, default: "N"
    t.datetime "strike_price_expiration", precision: nil
    t.decimal "strike_price_blank", precision: 12, scale: 3
    t.decimal "strike_price1", precision: 12, scale: 3
    t.decimal "strike_price2", precision: 12, scale: 3
    t.decimal "strike_price3", precision: 12, scale: 3
    t.decimal "strike_price4", precision: 12, scale: 3
    t.decimal "strike_price5", precision: 12, scale: 3
    t.decimal "strike_price6", precision: 12, scale: 3
    t.decimal "strike_price7", precision: 12, scale: 3
    t.decimal "strike_price8", precision: 12, scale: 3
    t.decimal "strike_price9", precision: 12, scale: 3
    t.decimal "strike_price10", precision: 12, scale: 3
    t.decimal "strike_price11", precision: 12, scale: 3
    t.decimal "strike_price12", precision: 12, scale: 3
    t.decimal "strike_price13", precision: 12, scale: 3
    t.decimal "strike_price14", precision: 12, scale: 3
    t.decimal "strike_price15", precision: 12, scale: 3
    t.decimal "pre_production_price_before_discount", precision: 12, scale: 3, default: 0.0
    t.varchar "pre_production_discount_code", limit: 5
    t.decimal "pre_production_price", precision: 12, scale: 3, default: 0.0
    t.decimal "strike_price_pre_production", precision: 12, scale: 3
    t.decimal "purchase_price_blank", precision: 12, scale: 3
    t.decimal "purchase_price1", precision: 12, scale: 3
    t.decimal "purchase_price2", precision: 12, scale: 3
    t.decimal "purchase_price3", precision: 12, scale: 3
    t.decimal "purchase_price4", precision: 12, scale: 3
    t.decimal "purchase_price5", precision: 12, scale: 3
    t.decimal "purchase_price6", precision: 12, scale: 3
    t.decimal "purchase_price7", precision: 12, scale: 3
    t.decimal "purchase_price8", precision: 12, scale: 3
    t.decimal "purchase_price9", precision: 12, scale: 3
    t.decimal "purchase_price10", precision: 12, scale: 3
    t.decimal "purchase_price11", precision: 12, scale: 3
    t.decimal "purchase_price12", precision: 12, scale: 3
    t.decimal "purchase_price13", precision: 12, scale: 3
    t.decimal "purchase_price14", precision: 12, scale: 3
    t.decimal "purchase_price15", precision: 12, scale: 3
    t.decimal "purchase_price_pre_production", precision: 12, scale: 3
    t.index ["catalog_item_id"], name: "catalog_item_prices_catalog_item_id"
  end

  create_table "catalog_item_prices_bak_20221230", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_item_id"
    t.datetime "from_date", precision: nil, null: false
    t.datetime "to_date", precision: nil, null: false
    t.decimal "price", precision: 12, scale: 3
    t.varchar "price_level", limit: 1
    t.integer "quantity"
    t.decimal "column1", precision: 12, scale: 3
    t.decimal "column2", precision: 12, scale: 3
    t.decimal "column3", precision: 12, scale: 3
    t.decimal "column4", precision: 12, scale: 3
    t.decimal "column5", precision: 12, scale: 3
    t.decimal "column6", precision: 12, scale: 3
    t.decimal "column7", precision: 12, scale: 3
    t.decimal "column8", precision: 12, scale: 3
    t.decimal "column9", precision: 12, scale: 3
    t.decimal "column10", precision: 12, scale: 3
    t.varchar "updated_by_code", limit: 25
    t.decimal "blank_good_price", precision: 12, scale: 3
    t.varchar "column1_discount_code", limit: 5
    t.varchar "column2_discount_code", limit: 5
    t.varchar "column3_discount_code", limit: 5
    t.varchar "column4_discount_code", limit: 5
    t.varchar "column5_discount_code", limit: 5
    t.varchar "column6_discount_code", limit: 5
    t.varchar "column7_discount_code", limit: 5
    t.varchar "column8_discount_code", limit: 5
    t.varchar "column9_discount_code", limit: 5
    t.varchar "column10_discount_code", limit: 5
    t.varchar "blank_good_discount_code", limit: 5
    t.decimal "column1_price_before_discount", precision: 12, scale: 3
    t.decimal "column2_price_before_discount", precision: 12, scale: 3
    t.decimal "column3_price_before_discount", precision: 12, scale: 3
    t.decimal "column4_price_before_discount", precision: 12, scale: 3
    t.decimal "column5_price_before_discount", precision: 12, scale: 3
    t.decimal "column6_price_before_discount", precision: 12, scale: 3
    t.decimal "column7_price_before_discount", precision: 12, scale: 3
    t.decimal "column8_price_before_discount", precision: 12, scale: 3
    t.decimal "column9_price_before_discount", precision: 12, scale: 3
    t.decimal "column10_price_before_discount", precision: 12, scale: 3
    t.decimal "blank_good_price_before_discount", precision: 12, scale: 3
    t.integer "end_quantity_price"
    t.decimal "column11", precision: 12, scale: 3
    t.decimal "column12", precision: 12, scale: 3
    t.decimal "column13", precision: 12, scale: 3
    t.decimal "column14", precision: 12, scale: 3
    t.decimal "column15", precision: 12, scale: 3
    t.varchar "column11_discount_code", limit: 5
    t.varchar "column12_discount_code", limit: 5
    t.varchar "column13_discount_code", limit: 5
    t.varchar "column14_discount_code", limit: 5
    t.varchar "column15_discount_code", limit: 5
    t.decimal "column11_price_before_discount", precision: 12, scale: 3
    t.decimal "column12_price_before_discount", precision: 12, scale: 3
    t.decimal "column13_price_before_discount", precision: 12, scale: 3
    t.decimal "column14_price_before_discount", precision: 12, scale: 3
    t.decimal "column15_price_before_discount", precision: 12, scale: 3
    t.integer "next_quantity_price"
    t.varchar "strike_price_flag", limit: 1
    t.datetime "strike_price_expiration", precision: nil
    t.decimal "strike_price_blank", precision: 12, scale: 3
    t.decimal "strike_price1", precision: 12, scale: 3
    t.decimal "strike_price2", precision: 12, scale: 3
    t.decimal "strike_price3", precision: 12, scale: 3
    t.decimal "strike_price4", precision: 12, scale: 3
    t.decimal "strike_price5", precision: 12, scale: 3
    t.decimal "strike_price6", precision: 12, scale: 3
    t.decimal "strike_price7", precision: 12, scale: 3
    t.decimal "strike_price8", precision: 12, scale: 3
    t.decimal "strike_price9", precision: 12, scale: 3
    t.decimal "strike_price10", precision: 12, scale: 3
    t.decimal "strike_price11", precision: 12, scale: 3
    t.decimal "strike_price12", precision: 12, scale: 3
    t.decimal "strike_price13", precision: 12, scale: 3
    t.decimal "strike_price14", precision: 12, scale: 3
    t.decimal "strike_price15", precision: 12, scale: 3
  end

  create_table "catalog_item_production_days", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", default: 0
    t.decimal "production_day1", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day2", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day3", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day4", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day5", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day6", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day7", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day8", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day9", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day10", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day11", precision: 12, scale: 2
    t.decimal "production_day12", precision: 12, scale: 2
    t.decimal "production_day13", precision: 12, scale: 2
    t.decimal "production_day14", precision: 12, scale: 2
    t.decimal "production_day15", precision: 12, scale: 2
    t.decimal "pre_production_day", precision: 12, scale: 2
    t.index ["catalog_item_id"], name: "idx_catalog_item_prd_days_catalog_item_id"
  end

  create_table "catalog_item_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "ship_contact", limit: 50
    t.varchar "ship_code", limit: 25
    t.integer "imprint_type_id"
    t.varchar "imprint_type_code", limit: 25
    t.index ["catalog_item_id"], name: "idx_catalog_item_ship_catalog_item_id"
  end

  create_table "catalog_item_similar_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.integer "similar_item_id", null: false
    t.varchar "similar_item_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["catalog_item_id"], name: "idx_catalog_item_siml_catalog_item_id"
  end

  create_table "catalog_item_templates", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "x_coordinate", limit: 50
    t.varchar "y_coordinate", limit: 50
    t.varchar "length", limit: 50
    t.varchar "width", limit: 50
    t.varchar "template_name", limit: 100
    t.integer "imprint_type_id"
    t.varchar "imprint_type_code", limit: 25
    t.varchar "comments", limit: 50
    t.varchar "decoration_height", limit: 50
    t.varchar "decoration_width", limit: 50
    t.varchar "decoration_diameter", limit: 50
    t.varchar "geometry", limit: 25
    t.varchar "unit_of_measurement", limit: 25
    t.integer "units_included"
    t.varchar "units_included_uom", limit: 25
    t.integer "units_max"
    t.varchar "default_decoration", limit: 1
    t.char "layout", limit: 25
    t.varchar "template_thumbnail", limit: 100
    t.index ["catalog_item_id"], name: "idx_catalog_item_tmpl_catalog_item_id"
  end

  create_table "catalog_item_templates_bak20231030", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_item_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "x_coordinate", limit: 50
    t.varchar "y_coordinate", limit: 50
    t.varchar "length", limit: 50
    t.varchar "width", limit: 50
    t.varchar "template_name", limit: 100
    t.integer "imprint_type_id"
    t.varchar "imprint_type_code", limit: 25
    t.varchar "comments", limit: 50
    t.varchar "decoration_height", limit: 50
    t.varchar "decoration_width", limit: 50
    t.varchar "decoration_diameter", limit: 50
    t.varchar "geometry", limit: 25
    t.varchar "unit_of_measurement", limit: 25
    t.integer "units_included"
    t.varchar "units_included_uom", limit: 25
    t.integer "units_max"
    t.varchar "default_decoration", limit: 1
    t.char "layout", limit: 25
    t.varchar "template_thumbnail", limit: 100
  end

  create_table "catalog_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "purchase_description", limit: 1000
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 16, scale: 4
    t.decimal "min_qty", precision: 16, scale: 4
    t.decimal "max_qty", precision: 16, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority", default: 0
    t.integer "catalog_item_category_id"
    t.varchar "item_type", limit: 1, default: "I", null: false
    t.varchar "sale_description", limit: 1000
    t.varchar "barcode", limit: 25
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, default: "Y", null: false
    t.integer "prefered_vendor_id"
    t.varchar "vendor_item_name", limit: 50
    t.varchar "packet_require_yn", limit: 1, default: "N"
    t.varchar "meta_tag", limit: 4000
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "upc_code", limit: 25
    t.varchar "vendor_style_code", limit: 25
    t.integer "production_time"
    t.integer "rush_time"
    t.integer "column1"
    t.integer "column2"
    t.integer "column3"
    t.integer "column4"
    t.integer "column5"
    t.integer "column6"
    t.integer "column7"
    t.integer "column8"
    t.integer "column9"
    t.integer "column10"
    t.varchar "scope_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.integer "lot_size", default: 1
    t.varchar "qty_dependable_flag", limit: 1, default: "N"
    t.varchar "select_all_values_flag", limit: 1, default: "N"
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_type", limit: 1, default: "I"
    t.varchar "batch_require_yn", limit: 1, default: "N"
    t.varchar "udf1", limit: 200
    t.varchar "udf2", limit: 200
    t.varchar "udf3", limit: 200
    t.varchar "udf4", limit: 200
    t.varchar "udf5", limit: 200
    t.varchar "udf6", limit: 200
    t.decimal "retail_rate", precision: 12, scale: 3
    t.decimal "pouch_rate", precision: 12, scale: 3
    t.decimal "card_rate", precision: 12, scale: 3
    t.decimal "duty_per_rate", precision: 12, scale: 3
    t.decimal "freight_rate", precision: 12, scale: 3
    t.decimal "factory_rate", precision: 12, scale: 3
    t.decimal "landed_rate", precision: 12, scale: 3
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_500", limit: 100
    t.varchar "class_name", limit: 50
    t.varchar "has_expired_date_flag", limit: 1, default: "N"
    t.varchar "distributed_by_flag", limit: 1, default: "N"
    t.varchar "default_shipper", limit: 50
    t.integer "default_shipper_id"
    t.varchar "default_shipper_code", limit: 25
    t.integer "column11"
    t.integer "column12"
    t.integer "column13"
    t.integer "column14"
    t.integer "column15"
    t.varchar "price_editable_flag", limit: 1, default: "N"
    t.varchar "multiple_artwork_flag", limit: 1, default: "N"
    t.integer "prefered_location_id"
    t.varchar "prefered_location_code", limit: 25
    t.varchar "upload_method", limit: 25
    t.varchar "design_notes", limit: 1000
    t.decimal "total_order_qty", precision: 10, scale: 4
    t.decimal "total_order_amt", precision: 16, scale: 2
    t.varchar "commodity_description", limit: 1000
    t.varchar "udf7", limit: 200
    t.varchar "udf8", limit: 200
    t.varchar "udf9", limit: 200
    t.varchar "udf10", limit: 200
    t.varchar "external_po_flag", limit: 1
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 50
    t.varchar "web_upload_flag", limit: 1, default: "N"
    t.decimal "free_sample_qty", precision: 10, scale: 4
    t.varchar "is_eqp_qualified", limit: 1, default: "N"
    t.varchar "is_nqp_qualified", limit: 1
    t.varchar "inventory_posting_flag", limit: 1, default: "Y"
    t.varchar "asi_category1", limit: 100
    t.varchar "asi_category2", limit: 100
    t.varchar "asi_product_color_type", limit: 100
    t.char "portal_show_flag", limit: 1, default: "N"
    t.varchar "catalog_item_portal_inventory", limit: 50
    t.varchar "promostandard_charge_type", limit: 25
    t.varchar "harmonious_code", limit: 50
    t.decimal "harmonious_cost", precision: 12, scale: 4
    t.varchar "country_of_origin", limit: 20
    t.char "laser_cut_required", limit: 1, default: "N"
    t.char "prop65_flag", limit: 1
    t.varchar "prop65_warning", limit: 1000
    t.char "primarymaterial", limit: 100
    t.char "dimensionuom", limit: 10
    t.decimal "depth", precision: 12, scale: 3
    t.decimal "height", precision: 12, scale: 3
    t.char "weightuom", limit: 10
    t.decimal "weight", precision: 12, scale: 3
    t.char "gtin", limit: 25
    t.char "isrushservice", limit: 1, default: "N"
    t.char "hex_code", limit: 15
    t.varchar "four51_item_id", limit: 50
    t.varchar "four51_artwork_file_name", limit: 200
    t.char "is_lot_required", limit: 1, default: "N"
    t.varchar "four51_cust_po_filename", limit: 100
    t.varchar "image_icon1", limit: 100
    t.varchar "image_icon2", limit: 100
    t.varchar "image_icon3", limit: 100
    t.varchar "image_icon4", limit: 100
    t.char "is_customer_item", limit: 1, default: "N"
    t.varchar "customer_code", limit: 25
    t.varchar_max "acknowledgement_remarks"
    t.varchar "four51_proof_filename", limit: 100
    t.varchar "madetoorder_flag", limit: 1, default: "N"
    t.char "four51_proof_layout", limit: 15
    t.varchar "allow_blank_order", limit: 1, default: "Y", null: false
    t.varchar "web_description", limit: 1500
    t.decimal "width", precision: 12, scale: 3
    t.integer "lead_time"
    t.integer "master_carton_per_pallet"
    t.integer "inner_carton_per_master_carton"
    t.integer "qty_per_inner_carton"
    t.varchar "updated_inventory_flag", limit: 1, default: "N"
    t.varchar "icon", limit: 100
    t.varchar "ignore_production_capacity_flag", limit: 1, default: "N"
    t.char "purchase_on_web", limit: 1, default: "N"
    t.varchar "compliance_document", limit: 200
    t.integer "sage_connect_id"
    t.integer "prefered_warehouse_id"
    t.varchar "prefered_warehouse_code", limit: 25
    t.varchar "fda_compliant", limit: 1
    t.varchar "fda_compliance_document", limit: 100
    t.varchar "prop65_compliant", limit: 1
    t.varchar "pfas_compliant", limit: 1
    t.varchar "pfas_compliance_document", limit: 100
    t.varchar "cpsia_compliant", limit: 1
    t.varchar "cpsia_compliance_document", limit: 100
    t.varchar "msds_compliant", limit: 1
    t.varchar "msds_compliance_document", limit: 100
    t.decimal "purchase_price", precision: 12, scale: 3
    t.char "add_to_po_flag", limit: 1, default: "N"
    t.decimal "length", precision: 12, scale: 3
    t.decimal "setup_cost", precision: 12, scale: 3
    t.varchar "sage_updated_by", limit: 150
    t.datetime "sage_last_updated_date", precision: nil
    t.index ["item_type"], name: "idx_catalog_items_item_type"
    t.index ["store_code"], name: "catalog_items_store_code"
  end

  create_table "catalog_items20220512", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "purchase_description", limit: 1000
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 16, scale: 4
    t.decimal "min_qty", precision: 16, scale: 4
    t.decimal "max_qty", precision: 16, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority"
    t.integer "catalog_item_category_id"
    t.varchar "item_type", limit: 1, null: false
    t.varchar "sale_description", limit: 1000
    t.varchar "barcode", limit: 25
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, null: false
    t.integer "prefered_vendor_id"
    t.varchar "vendor_item_name", limit: 50
    t.varchar "packet_require_yn", limit: 1
    t.varchar "meta_tag", limit: 3000
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "upc_code", limit: 25
    t.varchar "vendor_style_code", limit: 25
    t.integer "production_time"
    t.integer "rush_time"
    t.integer "column1"
    t.integer "column2"
    t.integer "column3"
    t.integer "column4"
    t.integer "column5"
    t.integer "column6"
    t.integer "column7"
    t.integer "column8"
    t.integer "column9"
    t.integer "column10"
    t.varchar "scope_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.integer "lot_size"
    t.varchar "qty_dependable_flag", limit: 1
    t.varchar "select_all_values_flag", limit: 1
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_type", limit: 1
    t.varchar "batch_require_yn", limit: 1
    t.varchar "udf1", limit: 200
    t.varchar "udf2", limit: 200
    t.varchar "udf3", limit: 200
    t.varchar "udf4", limit: 200
    t.varchar "udf5", limit: 200
    t.varchar "udf6", limit: 200
    t.decimal "retail_rate", precision: 12, scale: 3
    t.decimal "pouch_rate", precision: 12, scale: 3
    t.decimal "card_rate", precision: 12, scale: 3
    t.decimal "duty_per_rate", precision: 12, scale: 3
    t.decimal "freight_rate", precision: 12, scale: 3
    t.decimal "factory_rate", precision: 12, scale: 3
    t.decimal "landed_rate", precision: 12, scale: 3
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_500", limit: 100
    t.varchar "class_name", limit: 50
    t.varchar "has_expired_date_flag", limit: 1
    t.varchar "distributed_by_flag", limit: 1
    t.varchar "default_shipper", limit: 50
    t.integer "default_shipper_id"
    t.varchar "default_shipper_code", limit: 25
    t.integer "column11"
    t.integer "column12"
    t.integer "column13"
    t.integer "column14"
    t.integer "column15"
    t.varchar "price_editable_flag", limit: 1
    t.varchar "multiple_artwork_flag", limit: 1
    t.integer "prefered_location_id"
    t.varchar "prefered_location_code", limit: 25
    t.varchar "upload_method", limit: 25
    t.varchar "design_notes", limit: 1000
    t.decimal "total_order_qty", precision: 10, scale: 4
    t.decimal "total_order_amt", precision: 16, scale: 2
    t.varchar "commodity_description", limit: 1000
    t.varchar "udf7", limit: 200
    t.varchar "udf8", limit: 200
    t.varchar "udf9", limit: 200
    t.varchar "udf10", limit: 200
    t.varchar "external_po_flag", limit: 1
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 50
    t.varchar "web_upload_flag", limit: 1
    t.decimal "free_sample_qty", precision: 10, scale: 4
    t.varchar "is_eqp_qualified", limit: 1
    t.varchar "is_nqp_qualified", limit: 1
    t.varchar "inventory_posting_flag", limit: 1
    t.varchar "asi_category1", limit: 100
    t.varchar "asi_category2", limit: 100
    t.varchar "asi_product_color_type", limit: 100
    t.char "portal_show_flag", limit: 1
    t.varchar "catalog_item_portal_inventory", limit: 50
    t.varchar "promostandard_charge_type", limit: 25
    t.varchar "harmonious_code", limit: 50
    t.decimal "harmonious_cost", precision: 12, scale: 4
    t.varchar "country_of_origin", limit: 20
    t.char "laser_cut_required", limit: 1
    t.char "prop65_flag", limit: 1
    t.varchar "prop65_warning", limit: 1000
    t.char "primarymaterial", limit: 100
    t.char "dimensionuom", limit: 10
    t.decimal "depth", precision: 12, scale: 3
    t.decimal "height", precision: 12, scale: 3
    t.char "weightuom", limit: 10
    t.decimal "weight", precision: 12, scale: 3
    t.char "gtin", limit: 25
    t.char "isrushservice", limit: 1
    t.char "hex_code", limit: 15
    t.varchar "four51_item_id", limit: 50
    t.varchar "four51_artwork_file_name", limit: 200
    t.char "is_lot_required", limit: 1
    t.varchar "four51_cust_po_filename", limit: 100
    t.varchar "image_icon1", limit: 100
    t.varchar "image_icon2", limit: 100
    t.varchar "image_icon3", limit: 100
    t.varchar "image_icon4", limit: 100
    t.char "is_customer_item", limit: 1
    t.varchar "customer_code", limit: 25
    t.varchar_max "acknowledgement_remarks"
    t.varchar "four51_proof_filename", limit: 100
    t.varchar "madetoorder_flag", limit: 1
    t.char "four51_proof_layout", limit: 15
    t.varchar "allow_blank_order", limit: 1, null: false
    t.varchar "web_description", limit: 1500
    t.decimal "width", precision: 12, scale: 3
    t.integer "lead_time"
    t.integer "master_carton_per_pallet"
    t.integer "inner_carton_per_master_carton"
    t.integer "qty_per_inner_carton"
    t.varchar "updated_inventory_flag", limit: 1
  end

  create_table "catalog_items_20230711", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "purchase_description", limit: 1000
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 16, scale: 4
    t.decimal "min_qty", precision: 16, scale: 4
    t.decimal "max_qty", precision: 16, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority"
    t.integer "catalog_item_category_id"
    t.varchar "item_type", limit: 1, null: false
    t.varchar "sale_description", limit: 1000
    t.varchar "barcode", limit: 25
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, null: false
    t.integer "prefered_vendor_id"
    t.varchar "vendor_item_name", limit: 50
    t.varchar "packet_require_yn", limit: 1
    t.varchar "meta_tag", limit: 4000
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "upc_code", limit: 25
    t.varchar "vendor_style_code", limit: 25
    t.integer "production_time"
    t.integer "rush_time"
    t.integer "column1"
    t.integer "column2"
    t.integer "column3"
    t.integer "column4"
    t.integer "column5"
    t.integer "column6"
    t.integer "column7"
    t.integer "column8"
    t.integer "column9"
    t.integer "column10"
    t.varchar "scope_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.integer "lot_size"
    t.varchar "qty_dependable_flag", limit: 1
    t.varchar "select_all_values_flag", limit: 1
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_type", limit: 1
    t.varchar "batch_require_yn", limit: 1
    t.varchar "udf1", limit: 200
    t.varchar "udf2", limit: 200
    t.varchar "udf3", limit: 200
    t.varchar "udf4", limit: 200
    t.varchar "udf5", limit: 200
    t.varchar "udf6", limit: 200
    t.decimal "retail_rate", precision: 12, scale: 3
    t.decimal "pouch_rate", precision: 12, scale: 3
    t.decimal "card_rate", precision: 12, scale: 3
    t.decimal "duty_per_rate", precision: 12, scale: 3
    t.decimal "freight_rate", precision: 12, scale: 3
    t.decimal "factory_rate", precision: 12, scale: 3
    t.decimal "landed_rate", precision: 12, scale: 3
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_500", limit: 100
    t.varchar "class_name", limit: 50
    t.varchar "has_expired_date_flag", limit: 1
    t.varchar "distributed_by_flag", limit: 1
    t.varchar "default_shipper", limit: 50
    t.integer "default_shipper_id"
    t.varchar "default_shipper_code", limit: 25
    t.integer "column11"
    t.integer "column12"
    t.integer "column13"
    t.integer "column14"
    t.integer "column15"
    t.varchar "price_editable_flag", limit: 1
    t.varchar "multiple_artwork_flag", limit: 1
    t.integer "prefered_location_id"
    t.varchar "prefered_location_code", limit: 25
    t.varchar "upload_method", limit: 25
    t.varchar "design_notes", limit: 1000
    t.decimal "total_order_qty", precision: 10, scale: 4
    t.decimal "total_order_amt", precision: 16, scale: 2
    t.varchar "commodity_description", limit: 1000
    t.varchar "udf7", limit: 200
    t.varchar "udf8", limit: 200
    t.varchar "udf9", limit: 200
    t.varchar "udf10", limit: 200
    t.varchar "external_po_flag", limit: 1
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 50
    t.varchar "web_upload_flag", limit: 1
    t.decimal "free_sample_qty", precision: 10, scale: 4
    t.varchar "is_eqp_qualified", limit: 1
    t.varchar "is_nqp_qualified", limit: 1
    t.varchar "inventory_posting_flag", limit: 1
    t.varchar "asi_category1", limit: 100
    t.varchar "asi_category2", limit: 100
    t.varchar "asi_product_color_type", limit: 100
    t.char "portal_show_flag", limit: 1
    t.varchar "catalog_item_portal_inventory", limit: 50
    t.varchar "promostandard_charge_type", limit: 25
    t.varchar "harmonious_code", limit: 50
    t.decimal "harmonious_cost", precision: 12, scale: 4
    t.varchar "country_of_origin", limit: 20
    t.char "laser_cut_required", limit: 1
    t.char "prop65_flag", limit: 1
    t.varchar "prop65_warning", limit: 1000
    t.char "primarymaterial", limit: 100
    t.char "dimensionuom", limit: 10
    t.decimal "depth", precision: 12, scale: 3
    t.decimal "height", precision: 12, scale: 3
    t.char "weightuom", limit: 10
    t.decimal "weight", precision: 12, scale: 3
    t.char "gtin", limit: 25
    t.char "isrushservice", limit: 1
    t.char "hex_code", limit: 15
    t.varchar "four51_item_id", limit: 50
    t.varchar "four51_artwork_file_name", limit: 200
    t.char "is_lot_required", limit: 1
    t.varchar "four51_cust_po_filename", limit: 100
    t.varchar "image_icon1", limit: 100
    t.varchar "image_icon2", limit: 100
    t.varchar "image_icon3", limit: 100
    t.varchar "image_icon4", limit: 100
    t.char "is_customer_item", limit: 1
    t.varchar "customer_code", limit: 25
    t.varchar_max "acknowledgement_remarks"
    t.varchar "four51_proof_filename", limit: 100
    t.varchar "madetoorder_flag", limit: 1
    t.char "four51_proof_layout", limit: 15
    t.varchar "allow_blank_order", limit: 1, null: false
    t.varchar "web_description", limit: 1500
    t.decimal "width", precision: 12, scale: 3
    t.integer "lead_time"
    t.integer "master_carton_per_pallet"
    t.integer "inner_carton_per_master_carton"
    t.integer "qty_per_inner_carton"
    t.varchar "updated_inventory_flag", limit: 1
    t.varchar "icon", limit: 100
    t.varchar "ignore_production_capacity_flag", limit: 1
    t.char "purchase_on_web", limit: 1
    t.varchar "compliance_document", limit: 200
    t.integer "sage_connect_id"
    t.integer "prefered_warehouse_id"
    t.varchar "prefered_warehouse_code", limit: 25
  end

  create_table "catalog_items__20230705_capital_names", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "purchase_description", limit: 1000
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 16, scale: 4
    t.decimal "min_qty", precision: 16, scale: 4
    t.decimal "max_qty", precision: 16, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority"
    t.integer "catalog_item_category_id"
    t.varchar "item_type", limit: 1, null: false
    t.varchar "sale_description", limit: 1000
    t.varchar "barcode", limit: 25
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, null: false
    t.integer "prefered_vendor_id"
    t.varchar "vendor_item_name", limit: 50
    t.varchar "packet_require_yn", limit: 1
    t.varchar "meta_tag", limit: 4000
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "upc_code", limit: 25
    t.varchar "vendor_style_code", limit: 25
    t.integer "production_time"
    t.integer "rush_time"
    t.integer "column1"
    t.integer "column2"
    t.integer "column3"
    t.integer "column4"
    t.integer "column5"
    t.integer "column6"
    t.integer "column7"
    t.integer "column8"
    t.integer "column9"
    t.integer "column10"
    t.varchar "scope_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.integer "lot_size"
    t.varchar "qty_dependable_flag", limit: 1
    t.varchar "select_all_values_flag", limit: 1
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_type", limit: 1
    t.varchar "batch_require_yn", limit: 1
    t.varchar "udf1", limit: 200
    t.varchar "udf2", limit: 200
    t.varchar "udf3", limit: 200
    t.varchar "udf4", limit: 200
    t.varchar "udf5", limit: 200
    t.varchar "udf6", limit: 200
    t.decimal "retail_rate", precision: 12, scale: 3
    t.decimal "pouch_rate", precision: 12, scale: 3
    t.decimal "card_rate", precision: 12, scale: 3
    t.decimal "duty_per_rate", precision: 12, scale: 3
    t.decimal "freight_rate", precision: 12, scale: 3
    t.decimal "factory_rate", precision: 12, scale: 3
    t.decimal "landed_rate", precision: 12, scale: 3
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_500", limit: 100
    t.varchar "class_name", limit: 50
    t.varchar "has_expired_date_flag", limit: 1
    t.varchar "distributed_by_flag", limit: 1
    t.varchar "default_shipper", limit: 50
    t.integer "default_shipper_id"
    t.varchar "default_shipper_code", limit: 25
    t.integer "column11"
    t.integer "column12"
    t.integer "column13"
    t.integer "column14"
    t.integer "column15"
    t.varchar "price_editable_flag", limit: 1
    t.varchar "multiple_artwork_flag", limit: 1
    t.integer "prefered_location_id"
    t.varchar "prefered_location_code", limit: 25
    t.varchar "upload_method", limit: 25
    t.varchar "design_notes", limit: 1000
    t.decimal "total_order_qty", precision: 10, scale: 4
    t.decimal "total_order_amt", precision: 16, scale: 2
    t.varchar "commodity_description", limit: 1000
    t.varchar "udf7", limit: 200
    t.varchar "udf8", limit: 200
    t.varchar "udf9", limit: 200
    t.varchar "udf10", limit: 200
    t.varchar "external_po_flag", limit: 1
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 50
    t.varchar "web_upload_flag", limit: 1
    t.decimal "free_sample_qty", precision: 10, scale: 4
    t.varchar "is_eqp_qualified", limit: 1
    t.varchar "is_nqp_qualified", limit: 1
    t.varchar "inventory_posting_flag", limit: 1
    t.varchar "asi_category1", limit: 100
    t.varchar "asi_category2", limit: 100
    t.varchar "asi_product_color_type", limit: 100
    t.char "portal_show_flag", limit: 1
    t.varchar "catalog_item_portal_inventory", limit: 50
    t.varchar "promostandard_charge_type", limit: 25
    t.varchar "harmonious_code", limit: 50
    t.decimal "harmonious_cost", precision: 12, scale: 4
    t.varchar "country_of_origin", limit: 20
    t.char "laser_cut_required", limit: 1
    t.char "prop65_flag", limit: 1
    t.varchar "prop65_warning", limit: 1000
    t.char "primarymaterial", limit: 100
    t.char "dimensionuom", limit: 10
    t.decimal "depth", precision: 12, scale: 3
    t.decimal "height", precision: 12, scale: 3
    t.char "weightuom", limit: 10
    t.decimal "weight", precision: 12, scale: 3
    t.char "gtin", limit: 25
    t.char "isrushservice", limit: 1
    t.char "hex_code", limit: 15
    t.varchar "four51_item_id", limit: 50
    t.varchar "four51_artwork_file_name", limit: 200
    t.char "is_lot_required", limit: 1
    t.varchar "four51_cust_po_filename", limit: 100
    t.varchar "image_icon1", limit: 100
    t.varchar "image_icon2", limit: 100
    t.varchar "image_icon3", limit: 100
    t.varchar "image_icon4", limit: 100
    t.char "is_customer_item", limit: 1
    t.varchar "customer_code", limit: 25
    t.varchar_max "acknowledgement_remarks"
    t.varchar "four51_proof_filename", limit: 100
    t.varchar "madetoorder_flag", limit: 1
    t.char "four51_proof_layout", limit: 15
    t.varchar "allow_blank_order", limit: 1, null: false
    t.varchar "web_description", limit: 1500
    t.decimal "width", precision: 12, scale: 3
    t.integer "lead_time"
    t.integer "master_carton_per_pallet"
    t.integer "inner_carton_per_master_carton"
    t.integer "qty_per_inner_carton"
    t.varchar "updated_inventory_flag", limit: 1
    t.varchar "icon", limit: 100
    t.varchar "ignore_production_capacity_flag", limit: 1
    t.char "purchase_on_web", limit: 1
    t.varchar "compliance_document", limit: 200
    t.integer "sage_connect_id"
    t.integer "prefered_warehouse_id"
    t.varchar "prefered_warehouse_code", limit: 25
  end

  create_table "catalog_items_bak20230713", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "store_code", limit: 25, null: false
    t.varchar "web_code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "purchase_description", limit: 1000
    t.varchar "image_thumnail", limit: 100
    t.varchar "image_small", limit: 100
    t.varchar "image_normal", limit: 100
    t.varchar "image_enlarge", limit: 100
    t.decimal "reorder_qty", precision: 10, scale: 4
    t.decimal "reorder_level", precision: 16, scale: 4
    t.decimal "min_qty", precision: 16, scale: 4
    t.decimal "max_qty", precision: 16, scale: 4
    t.datetime "item_date", precision: nil
    t.integer "priority"
    t.integer "catalog_item_category_id"
    t.varchar "item_type", limit: 1, null: false
    t.varchar "sale_description", limit: 1000
    t.varchar "barcode", limit: 25
    t.decimal "cost", precision: 12, scale: 3
    t.varchar "unit", limit: 10
    t.varchar "taxable", limit: 1, null: false
    t.integer "prefered_vendor_id"
    t.varchar "vendor_item_name", limit: 50
    t.varchar "packet_require_yn", limit: 1
    t.varchar "meta_tag", limit: 4000
    t.varchar "sketch_image1", limit: 100
    t.varchar "sketch_image2", limit: 100
    t.varchar "sketch_image3", limit: 100
    t.varchar "image_print", limit: 100
    t.varchar "tag_line1", limit: 100
    t.varchar "tag_line2", limit: 100
    t.varchar "tag_line3", limit: 100
    t.varchar "tag_line4", limit: 100
    t.varchar "tag_line5", limit: 100
    t.varchar "tag_line6", limit: 100
    t.varchar "tag_line7", limit: 100
    t.varchar "tag_line8", limit: 100
    t.varchar "image_1200", limit: 100
    t.varchar "upc_code", limit: 25
    t.varchar "vendor_style_code", limit: 25
    t.integer "production_time"
    t.integer "rush_time"
    t.integer "column1"
    t.integer "column2"
    t.integer "column3"
    t.integer "column4"
    t.integer "column5"
    t.integer "column6"
    t.integer "column7"
    t.integer "column8"
    t.integer "column9"
    t.integer "column10"
    t.varchar "scope_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.integer "lot_size"
    t.varchar "qty_dependable_flag", limit: 1
    t.varchar "select_all_values_flag", limit: 1
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "catalog_item_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_type", limit: 1
    t.varchar "batch_require_yn", limit: 1
    t.varchar "udf1", limit: 200
    t.varchar "udf2", limit: 200
    t.varchar "udf3", limit: 200
    t.varchar "udf4", limit: 200
    t.varchar "udf5", limit: 200
    t.varchar "udf6", limit: 200
    t.decimal "retail_rate", precision: 12, scale: 3
    t.decimal "pouch_rate", precision: 12, scale: 3
    t.decimal "card_rate", precision: 12, scale: 3
    t.decimal "duty_per_rate", precision: 12, scale: 3
    t.decimal "freight_rate", precision: 12, scale: 3
    t.decimal "factory_rate", precision: 12, scale: 3
    t.decimal "landed_rate", precision: 12, scale: 3
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_500", limit: 100
    t.varchar "class_name", limit: 50
    t.varchar "has_expired_date_flag", limit: 1
    t.varchar "distributed_by_flag", limit: 1
    t.varchar "default_shipper", limit: 50
    t.integer "default_shipper_id"
    t.varchar "default_shipper_code", limit: 25
    t.integer "column11"
    t.integer "column12"
    t.integer "column13"
    t.integer "column14"
    t.integer "column15"
    t.varchar "price_editable_flag", limit: 1
    t.varchar "multiple_artwork_flag", limit: 1
    t.integer "prefered_location_id"
    t.varchar "prefered_location_code", limit: 25
    t.varchar "upload_method", limit: 25
    t.varchar "design_notes", limit: 1000
    t.decimal "total_order_qty", precision: 10, scale: 4
    t.decimal "total_order_amt", precision: 16, scale: 2
    t.varchar "commodity_description", limit: 1000
    t.varchar "udf7", limit: 200
    t.varchar "udf8", limit: 200
    t.varchar "udf9", limit: 200
    t.varchar "udf10", limit: 200
    t.varchar "external_po_flag", limit: 1
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 50
    t.varchar "web_upload_flag", limit: 1
    t.decimal "free_sample_qty", precision: 10, scale: 4
    t.varchar "is_eqp_qualified", limit: 1
    t.varchar "is_nqp_qualified", limit: 1
    t.varchar "inventory_posting_flag", limit: 1
    t.varchar "asi_category1", limit: 100
    t.varchar "asi_category2", limit: 100
    t.varchar "asi_product_color_type", limit: 100
    t.char "portal_show_flag", limit: 1
    t.varchar "catalog_item_portal_inventory", limit: 50
    t.varchar "promostandard_charge_type", limit: 25
    t.varchar "harmonious_code", limit: 50
    t.decimal "harmonious_cost", precision: 12, scale: 4
    t.varchar "country_of_origin", limit: 20
    t.char "laser_cut_required", limit: 1
    t.char "prop65_flag", limit: 1
    t.varchar "prop65_warning", limit: 1000
    t.char "primarymaterial", limit: 100
    t.char "dimensionuom", limit: 10
    t.decimal "depth", precision: 12, scale: 3
    t.decimal "height", precision: 12, scale: 3
    t.char "weightuom", limit: 10
    t.decimal "weight", precision: 12, scale: 3
    t.char "gtin", limit: 25
    t.char "isrushservice", limit: 1
    t.char "hex_code", limit: 15
    t.varchar "four51_item_id", limit: 50
    t.varchar "four51_artwork_file_name", limit: 200
    t.char "is_lot_required", limit: 1
    t.varchar "four51_cust_po_filename", limit: 100
    t.varchar "image_icon1", limit: 100
    t.varchar "image_icon2", limit: 100
    t.varchar "image_icon3", limit: 100
    t.varchar "image_icon4", limit: 100
    t.char "is_customer_item", limit: 1
    t.varchar "customer_code", limit: 25
    t.varchar_max "acknowledgement_remarks"
    t.varchar "four51_proof_filename", limit: 100
    t.varchar "madetoorder_flag", limit: 1
    t.char "four51_proof_layout", limit: 15
    t.varchar "allow_blank_order", limit: 1, null: false
    t.varchar "web_description", limit: 1500
    t.decimal "width", precision: 12, scale: 3
    t.integer "lead_time"
    t.integer "master_carton_per_pallet"
    t.integer "inner_carton_per_master_carton"
    t.integer "qty_per_inner_carton"
    t.varchar "updated_inventory_flag", limit: 1
    t.varchar "icon", limit: 100
    t.varchar "ignore_production_capacity_flag", limit: 1
    t.char "purchase_on_web", limit: 1
    t.varchar "compliance_document", limit: 200
    t.integer "sage_connect_id"
    t.integer "prefered_warehouse_id"
    t.varchar "prefered_warehouse_code", limit: 25
  end

  create_table "catalog_store_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "description", limit: 500
    t.integer "sequence"
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_catalog_store_locations_code", unique: true
  end

  create_table "chemicals", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 500
    t.varchar "name", limit: 500
    t.char "type_of_toxicity", limit: 50
    t.char "listing_mechanism", limit: 10
    t.char "case_no", limit: 30
    t.datetime "date_listed", precision: nil
    t.varchar "nsrl_mlda", limit: 50
    t.varchar "updated_by_code", limit: 25
  end

  create_table "color_codes", id: false, force: :cascade do |t|
    t.string "color_number_code", limit: 10
    t.string "color_letter_code", limit: 50
    t.string "color_name", limit: 50
    t.string "color_pms_code", limit: 50
  end

  create_table "color_codes_bkp", id: false, force: :cascade do |t|
    t.string "color_number_code", limit: 10
    t.string "color_letter_code", limit: 50
    t.string "color_name", limit: 50
    t.string "color_pms_code", limit: 50
  end

  create_table "companies", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "company_cd", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "remarks", limit: 50
    t.varchar "aboutus", limit: 1000
    t.varchar "country", limit: 20
    t.varchar "cell_no", limit: 15
    t.varchar "email_to", limit: 200
    t.varchar "email_cc", limit: 200
    t.varchar "city_tax_code", limit: 50
    t.varchar "state_tax_code", limit: 50
    t.varchar "country_tax_code", limit: 50
    t.varchar "company_type", limit: 1
    t.integer "default_customer_id"
    t.integer "default_vendor_id"
    t.varchar "company_logo_file", limit: 100, default: "blank.jpg"
    t.varchar "company_name", limit: 100
    t.varchar "business_card", limit: 100, default: "blank.jpg"
    t.varchar "updated_by_code", limit: 25
    t.varchar "application_name", limit: 50, default: "Retail"
    t.decimal "inventory_sales_tax_value", precision: 8, scale: 4
    t.decimal "diamond_sales_tax_value", precision: 8, scale: 4
    t.decimal "metal_sales_tax_value", precision: 8, scale: 4
    t.varchar "home_page_flag", limit: 1
    t.varchar "home_page_type", limit: 200
    t.varchar "home_page_image1", limit: 250
    t.varchar "api_login_id", limit: 25
    t.varchar "api_transaction_key", limit: 25
    t.varchar "ccsc_enabled", limit: 1
    t.varchar "encryption_key", limit: 2000
    t.varchar "public_key", limit: 50
    t.varchar "private_key", limit: 50
    t.varchar "merchant_id", limit: 50
    t.varchar "payment_gateway_type", limit: 1
    t.varchar "fortis_user_id", limit: 50
    t.varchar "fortis_user_api_key", limit: 50
    t.varchar "fortis_location_api_key", limit: 50
    t.varchar "payment_gateway_environment", limit: 50
    t.decimal "item_price_factor", precision: 8, scale: 4
    t.varchar "default_tax_code", limit: 25
    t.integer "customer_statement_email_date"
    t.varchar "connect_asi_no", limit: 25
    t.varchar "connect_user_id", limit: 25
    t.varchar "connect_password", limit: 25
    t.varchar "endicia_environment", limit: 20
    t.varchar "endicia_requester_id", limit: 50
    t.varchar "endicia_account_id", limit: 50
    t.varchar "endicia_password", limit: 50
    t.varchar "ups_environment", limit: 20
    t.varchar "ups_license_number", limit: 50
    t.varchar "ups_user_id", limit: 50
    t.varchar "ups_password", limit: 50
    t.varchar "ups_shipper_number", limit: 50
    t.varchar "fedex_environment", limit: 20
    t.varchar "fedex_account_number", limit: 50
    t.varchar "fedex_meter_number", limit: 50
    t.varchar "fedex_api_transaction_key", limit: 50
    t.varchar "fedex_password", limit: 50
    t.varchar "fedex_webservice_version", limit: 50
    t.varchar "fedex_user_id", limit: 50
    t.varchar "fedex_login_password", limit: 50
    t.varchar "usps_environment", limit: 20
    t.varchar "usps_userid", limit: 50
    t.char "endicia_insurance", limit: 1
    t.char "endicia_signature_confirmation", limit: 1
    t.char "endicia_sunday_holiday_delivery", limit: 1
    t.varchar "endicia_stealth", limit: 1
    t.varchar "asi_environment", limit: 20
    t.varchar "production_asi_number", limit: 20
    t.varchar "production_asi_username", limit: 35
    t.varchar "production_asi_password", limit: 35
    t.varchar "sandbox_asi_number", limit: 20
    t.varchar "sandbox_asi_username", limit: 35
    t.varchar "sandbox_asi_password", limit: 35
    t.varchar "production_asi_authentication_url", limit: 100
    t.varchar "sandbox_asi_authentication_url", limit: 100
    t.varchar "production_asi_post_product_url", limit: 100
    t.varchar "sandbox_asi_post_product_url", limit: 100
    t.varchar "tax_id", limit: 25
    t.varchar "artwork_ftp_host", limit: 100
    t.varchar "artwork_ftp_port", limit: 10
    t.varchar "artwork_ftp_username", limit: 25
    t.varchar "artwork_ftp_password", limit: 25
    t.varchar "artwork_ftp_encryption_type", limit: 50
    t.varchar "endicia_delivery_confirmation", limit: 1
    t.char "four51_environment", limit: 15, default: "TEST           "
    t.varchar "job_progress_ftp_host", limit: 100
    t.varchar "job_progress_ftp_username", limit: 100
    t.varchar "job_progress_ftp_password", limit: 100
    t.varchar "sage_acct_id", limit: 20
    t.varchar "sage_key", limit: 50
    t.varchar "sage_api_version", limit: 20
  end

  create_table "company_locations", id: :integer, force: :cascade do |t|
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "company_id", null: false
    t.varchar "company_code", limit: 25
    t.integer "location_id", null: false
    t.varchar "location_code", limit: 25
  end

  create_table "countries", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "created_by", limit: 25
    t.string "updated_by", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "update_flag", limit: 1, default: "Y"
    t.string "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.string "code", limit: 25
    t.string "name", limit: 50
  end

  create_table "criteria_users", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "criteria_id", null: false
    t.integer "user_id", null: false
    t.varchar "default_yn", limit: 1, default: "N"
    t.integer "document_id", default: 0, null: false
    t.varchar "updated_by_code", limit: 25
    t.index ["criteria_id", "user_id"], name: "idx_criteria_users_criteria_id_user_id"
  end

  create_table "criterias", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.varchar "criteria_type", limit: 20
    t.integer "user_id"
    t.integer "document_id", null: false
    t.varchar "str1", limit: 25
    t.varchar "str2", limit: 25
    t.varchar "str3", limit: 25
    t.varchar "str4", limit: 25
    t.varchar "str5", limit: 25
    t.varchar "str6", limit: 25
    t.varchar "str7", limit: 25
    t.varchar "str8", limit: 25
    t.varchar "str9", limit: 25
    t.varchar "str10", limit: 25
    t.varchar "str11", limit: 25
    t.varchar "str12", limit: 25
    t.varchar "str13", limit: 25
    t.varchar "str14", limit: 25
    t.varchar "str15", limit: 25
    t.varchar "str16", limit: 25
    t.varchar "str17", limit: 25
    t.varchar "str18", limit: 25
    t.varchar "str19", limit: 25
    t.varchar "str20", limit: 25
    t.varchar "str21", limit: 25
    t.varchar "str22", limit: 25
    t.varchar "str23", limit: 25
    t.varchar "str24", limit: 25
    t.varchar "str25", limit: 25
    t.datetime "dt1", precision: nil
    t.datetime "dt2", precision: nil
    t.datetime "dt3", precision: nil
    t.datetime "dt4", precision: nil
    t.datetime "dt5", precision: nil
    t.datetime "dt6", precision: nil
    t.datetime "dt7", precision: nil
    t.datetime "dt8", precision: nil
    t.datetime "dt9", precision: nil
    t.datetime "dt10", precision: nil
    t.decimal "dec1", precision: 12, scale: 2
    t.decimal "dec2", precision: 12, scale: 2
    t.decimal "dec3", precision: 12, scale: 2
    t.decimal "dec4", precision: 12, scale: 2
    t.decimal "dec5", precision: 12, scale: 2
    t.decimal "dec6", precision: 12, scale: 2
    t.decimal "dec7", precision: 12, scale: 2
    t.decimal "dec8", precision: 12, scale: 2
    t.decimal "dec9", precision: 12, scale: 2
    t.decimal "dec10", precision: 12, scale: 2
    t.bigint "int1"
    t.bigint "int2"
    t.bigint "int3"
    t.bigint "int4"
    t.bigint "int5"
    t.bigint "int6"
    t.bigint "int7"
    t.bigint "int8"
    t.bigint "int9"
    t.bigint "int10"
    t.varchar "list1", limit: 5
    t.varchar "list2", limit: 5
    t.varchar "list3", limit: 5
    t.varchar "list4", limit: 5
    t.varchar "list5", limit: 5
    t.varchar "list6", limit: 5
    t.varchar "list7", limit: 5
    t.varchar "list8", limit: 5
    t.varchar "list9", limit: 5
    t.varchar "list10", limit: 5
    t.varchar "all1", limit: 1
    t.varchar "all2", limit: 1
    t.varchar "all3", limit: 1
    t.varchar "all4", limit: 1
    t.varchar "all5", limit: 1
    t.varchar "all6", limit: 1
    t.varchar "all7", limit: 1
    t.varchar "all8", limit: 1
    t.varchar "all9", limit: 1
    t.varchar "all10", limit: 1
    t.varchar "multiselect1", limit: 125
    t.varchar "multiselect2", limit: 1000
    t.varchar "multiselect3", limit: 125
    t.varchar "multiselect4", limit: 125
    t.varchar "multiselect5", limit: 125
    t.varchar "multiselect6", limit: 125
    t.varchar "multiselect7", limit: 125
    t.varchar "multiselect8", limit: 125
    t.varchar "multiselect9", limit: 125
    t.varchar "multiselect10", limit: 100
    t.varchar "lookup_name", limit: 25
    t.varchar "whereclause", limit: 100
    t.varchar "default_request", limit: 1, default: "N"
    t.varchar "str26", limit: 25
    t.varchar "str27", limit: 25
    t.varchar "str28", limit: 25
    t.varchar "str29", limit: 25
    t.varchar "str30", limit: 25
    t.varchar "multiselect11", limit: 125
    t.varchar "multiselect12", limit: 125
    t.varchar "multiselect13", limit: 125
    t.varchar "multiselect14", limit: 125
    t.varchar "multiselect15", limit: 125
    t.varchar "updated_by_code", limit: 25
  end

  create_table "crm_account_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
  end

  create_table "crm_accounts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "parent_account_id"
    t.integer "crm_account_category_id"
    t.integer "primary_contact_id"
    t.varchar "relationship_type", limit: 50
    t.varchar "address_type", limit: 50
    t.varchar "business_territory", limit: 50
    t.varchar "industry", limit: 50
    t.varchar "ownership_type", limit: 50
    t.varchar "preferred_contact_method", limit: 50
    t.varchar "prefered_contact_time", limit: 50
    t.varchar "prefered_contact_day", limit: 50
    t.varchar "name", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "website", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "ship_via_code", limit: 25, default: ""
    t.varchar "term_code", limit: 25, default: ""
    t.decimal "annual_revenue", precision: 12, scale: 2, default: 0.0
    t.decimal "credit_limit", precision: 12, scale: 2, default: 0.0
    t.integer "no_of_employees", default: 0
    t.varchar "description", limit: 100
    t.varchar "credit_hold_flag", limit: 1
    t.varchar "allow_email", limit: 1
    t.varchar "allow_phone_call", limit: 1
    t.varchar "allow_fax", limit: 1
    t.varchar "allow_mail", limit: 1
    t.varchar "send_marketing_material", limit: 1
    t.varchar "account_rating", limit: 1, default: " "
    t.varchar "account_source", limit: 50
    t.varchar "saluation", limit: 50
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "parent_account_code", limit: 50
    t.varchar "primary_contact_name", limit: 50
    t.varchar "crm_account_category_code", limit: 25
    t.varchar "facebook_id", limit: 50
    t.varchar "twitter_id", limit: 50
    t.varchar "linkedin_id", limit: 50
    t.integer "crm_group1_id"
    t.varchar "crm_group1_code", limit: 25
    t.integer "crm_group2_id"
    t.varchar "crm_group2_code", limit: 25
    t.integer "crm_group3_id"
    t.varchar "crm_group3_code", limit: 25
  end

  create_table "crm_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "trans_date", precision: nil
    t.datetime "due_date", precision: nil
    t.integer "performed_user_id"
    t.integer "crm_account_id"
    t.integer "crm_contact_id"
    t.integer "crm_task_id"
    t.varchar "subject", limit: 50
    t.varchar "description", limit: 200
    t.integer "crm_opportunity_id"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "updated_by_code", limit: 25
    t.varchar "crm_account_code", limit: 50
    t.varchar "performed_user_code", limit: 25
    t.varchar "crm_contact_name", limit: 50
  end

  create_table "crm_addresses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "address_for_flag", limit: 1
    t.integer "address_for_id"
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "address_contact", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "updated_by_code", limit: 25
  end

  create_table "crm_campaign_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "crm_campaign_id"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "cell_no", limit: 15
    t.varchar "email", limit: 200
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "spouse_name", limit: 50
    t.varchar "serial_no", limit: 6
    t.varchar "occasion_type", limit: 25
    t.varchar "occasion_date", limit: 6
    t.varchar "occasion_name", limit: 50
  end

  create_table "crm_campaigns", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "description", limit: 500
    t.varchar "email_content", limit: 500
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.varchar "campaign_type", limit: 100
    t.varchar "email", limit: 250
  end

  create_table "crm_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "crm_account_id"
    t.varchar "salutation", limit: 4
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "job_title", limit: 50
    t.varchar "department", limit: 50
    t.varchar "manager", limit: 50
    t.varchar "spouse_name", limit: 50
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "business_phone", limit: 50
    t.varchar "manager_phone", limit: 50
    t.varchar "home_phone", limit: 50
    t.varchar "cell_phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "address_type", limit: 50
    t.varchar "role", limit: 50
    t.varchar "preferred_contact_method", limit: 50
    t.varchar "gender", limit: 15
    t.varchar "marital_status", limit: 15
    t.datetime "date_of_birth", precision: nil
    t.datetime "date_of_marraige", precision: nil
    t.decimal "credit_limit", precision: 12, scale: 2, default: 0.0
    t.varchar "credit_hold_flag", limit: 1
    t.varchar "allow_email", limit: 1
    t.varchar "allow_phone_call", limit: 1
    t.varchar "allow_fax", limit: 1
    t.varchar "allow_mail", limit: 1
    t.varchar "send_marketing_material", limit: 1
    t.varchar "prefered_contact_time", limit: 50
    t.varchar "prefered_contact_day", limit: 50
    t.varchar "prefered_contact", limit: 50
    t.varchar "code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "crm_account_code", limit: 50
    t.varchar "facebook_id", limit: 50
    t.varchar "twitter_id", limit: 50
    t.varchar "linkedin_id", limit: 50
  end

  create_table "crm_groups", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "group_type", limit: 25
  end

  create_table "crm_leads", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "topic", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "name", limit: 50
    t.integer "crm_lead_category_id"
    t.integer "account_id"
    t.varchar "relationship_type", limit: 50
    t.varchar "address_type", limit: 50
    t.varchar "business_territory", limit: 50
    t.varchar "industry", limit: 50
    t.varchar "ownership_type", limit: 50
    t.varchar "lead_number", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "website", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "business_phone", limit: 50
    t.varchar "home_phone", limit: 50
    t.varchar "other_phone", limit: 50
    t.varchar "mobile_phone", limit: 50
    t.varchar "pager", limit: 50
    t.varchar "lead_source", limit: 50
    t.varchar "rating", limit: 50
    t.varchar "job_title", limit: 50
    t.varchar "saluation", limit: 50
    t.decimal "annual_revenue", precision: 12, scale: 2, default: 0.0
    t.varchar "description", limit: 100
    t.integer "no_of_employees"
    t.datetime "last_followed_date", precision: nil
    t.datetime "next_followed_date", precision: nil
    t.datetime "lead_date", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "facebook_id", limit: 50
    t.varchar "twitter_id", limit: 50
    t.varchar "linkedin_id", limit: 50
    t.varchar "crm_lead_category_code", limit: 25
  end

  create_table "crm_opportunities", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.varchar "opportunity_type", limit: 50
    t.varchar "stage", limit: 50
    t.integer "crm_account_id"
    t.datetime "close_date", precision: nil
    t.decimal "probability_per", precision: 6, scale: 2, default: 0.0
    t.decimal "amount", precision: 12, scale: 2, default: 0.0
    t.varchar "subject", limit: 100
    t.varchar "description", limit: 200
    t.varchar "updated_by_code", limit: 25
    t.varchar "crm_account_code", limit: 50
    t.datetime "start_date", precision: nil
    t.varchar "product_type", limit: 100
  end

  create_table "crm_relationships", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "party1_id"
    t.integer "party2_id"
    t.varchar "description", limit: 255
    t.varchar "updated_by_code", limit: 25
  end

  create_table "crm_tasks", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "trans_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "end_date", precision: nil
    t.datetime "start_date", precision: nil
    t.datetime "reminder_datetime", precision: nil
    t.integer "crm_account_id"
    t.integer "assigned_user_id"
    t.integer "crm_contact_id"
    t.integer "duration"
    t.varchar "description", limit: 100
    t.varchar "subject", limit: 50
    t.varchar "status", limit: 50
    t.varchar "priority", limit: 50
    t.varchar "location", limit: 50
    t.varchar "reminder_flag", limit: 1
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "updated_by_code", limit: 25
    t.varchar "crm_account_code", limit: 50
    t.varchar "assigned_user_code", limit: 25
    t.varchar "crm_contact_name", limit: 50
  end

  create_table "crmb_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "crmb_prospect_id"
    t.varchar "crmb_prospect_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.integer "activity_by_id"
    t.varchar "activity_by_code", limit: 25
    t.varchar "activity_type", limit: 25
    t.varchar "remarks", limit: 500
    t.datetime "activity_date", precision: nil
    t.varchar "crmb_contact_name", limit: 100
    t.varchar "customer_contact_name", limit: 100
    t.varchar "activity_hour", limit: 2
    t.varchar "activity_minute", limit: 2
    t.varchar "activity_date_time_format", limit: 2
    t.integer "crmb_task_id"
    t.varchar "timezone", limit: 10
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "regarding", limit: 100
    t.varchar "crmb_task_no", limit: 18
    t.varchar "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.varchar "ref_type", limit: 1
  end

  create_table "crmb_activity_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "crmb_activity_id", null: false
    t.varchar "contact_name", limit: 100
    t.varchar "contact_first_name", limit: 50
    t.varchar "contact_last_name", limit: 50
    t.varchar "contact_phone1", limit: 50
    t.varchar "contact_phone2", limit: 50
    t.varchar "default_contact_flag", limit: 1
    t.varchar "contact_email", limit: 50
    t.varchar "contact_address1", limit: 50
    t.varchar "contact_address2", limit: 50
    t.varchar "contact_city", limit: 25
    t.varchar "contact_state", limit: 25
    t.varchar "contact_zip", limit: 15
    t.varchar "contact_phone3", limit: 50
    t.varchar "contact_phone4", limit: 50
    t.varchar "job_title", limit: 50
  end

  create_table "crmb_addresses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "address_for_flag", limit: 1
    t.integer "address_for_id"
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "address_contact", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 8
  end

  create_table "crmb_asirankings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "crmb_prospect_id", default: 0
    t.varchar "serial_no", limit: 6
    t.datetime "ranking_date", precision: nil
    t.varchar "asi_ranking", limit: 10
    t.varchar "remarks", limit: 100
    t.integer "suppliers_reporting"
    t.integer "bankruptcies"
    t.decimal "collection", precision: 12, scale: 2
    t.decimal "writeoff", precision: 12, scale: 2
    t.decimal "nsf", precision: 12, scale: 2
    t.decimal "disputes", precision: 12, scale: 2
    t.decimal "dbt", precision: 12, scale: 2
    t.string "avgpaytime_curr6mths", limit: 25
    t.string "avgpaytime_prev6mths", limit: 25
    t.string "avgpaytime_industry", limit: 25
    t.decimal "highcreditext_current", precision: 12, scale: 2
    t.decimal "highcreditext_previous", precision: 12, scale: 2
    t.decimal "highcreditext_industry", precision: 12, scale: 2
    t.decimal "numpurchases_current", precision: 12, scale: 2
    t.decimal "numpurchases_previous", precision: 12, scale: 2
    t.decimal "numpurchases_industry", precision: 12, scale: 2
    t.decimal "volpurchases_current", precision: 12, scale: 2
    t.decimal "volpurchases_previous", precision: 12, scale: 2
    t.decimal "volpurchases_industry", precision: 12, scale: 2
    t.decimal "avghighcredit_current", precision: 12, scale: 2
    t.decimal "avghighcredit_previous", precision: 12, scale: 2
    t.decimal "avghighcredit_industry", precision: 12, scale: 2
    t.decimal "avginvoiceamt_current", precision: 12, scale: 2
    t.decimal "avginvoiceamt_previous", precision: 12, scale: 2
    t.decimal "avginvoiceamt_industry", precision: 12, scale: 2
  end

  create_table "crmb_campaign_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 12, null: false
    t.datetime "trans_dt", precision: nil, null: false
    t.integer "crmb_campaign_id", null: false
    t.varchar "customer_id", limit: 25
    t.varchar "customer_code", limit: 25
    t.integer "crmb_prospect_id"
    t.varchar "crmb_prospect_code", limit: 25
    t.varchar "serial_no", limit: 8, null: false
    t.varchar "category", limit: 25
    t.varchar "name", limit: 50
    t.varchar "contact1", limit: 40
    t.varchar "contact2", limit: 40
    t.varchar "address1", limit: 40
    t.varchar "address2", limit: 40
    t.varchar "city", limit: 20
    t.varchar "state", limit: 5
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 15
    t.varchar "phone2", limit: 15
    t.varchar "fax1", limit: 15
    t.varchar "email", limit: 50
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "sales_person", limit: 8
    t.varchar "ship_via", limit: 25
    t.index ["crmb_campaign_id"], name: "idx_crmb_campaign_lines_campaign_id"
  end

  create_table "crmb_campaigns", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 12, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "code", limit: 50, null: false
    t.varchar "campaign_type", limit: 25
    t.varchar "campaign_status", limit: 1
    t.varchar "remarks", limit: 200
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.integer "salesperson_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "description", limit: 200
  end

  create_table "crmb_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "crmb_prospect_id", null: false
    t.varchar "serial_no", limit: 8, null: false
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 20
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "phone2", limit: 50
    t.varchar "phone3", limit: 50
    t.varchar "email_id", limit: 50
    t.varchar "title", limit: 50
    t.varchar "contact_type", limit: 100
    t.varchar "default_contact_flag", limit: 1
    t.varchar "department", limit: 50
    t.varchar "email", limit: 50
    t.varchar "salutation", limit: 4
    t.datetime "date_of_birth", precision: nil
    t.varchar "gender", limit: 15
    t.varchar "manager", limit: 50
    t.varchar "role", limit: 50
    t.varchar "preferred_contact_method", limit: 50
    t.varchar "preferred_contact_time", limit: 50
    t.varchar "preferred_contact_day", limit: 50
    t.varchar "send_marketing_material", limit: 1
    t.varchar "allow_email", limit: 1
    t.varchar "allow_phone_call", limit: 1
    t.varchar "allow_fax", limit: 1
    t.varchar "allow_mail", limit: 1
    t.varchar "address_name", limit: 50
    t.varchar "phone4", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "assistant_title", limit: 50
    t.varchar "assistant", limit: 50
    t.varchar "assistant_contact", limit: 50
    t.varchar "assistant_phone", limit: 50
    t.varchar "assistant_phone_ext", limit: 25
    t.varchar "assistant_cell_phone", limit: 50
    t.varchar "assistant_email", limit: 50
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
  end

  create_table "crmb_groups", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "group_type", limit: 25
  end

  create_table "crmb_notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 8, null: false
    t.integer "crmb_prospect_id", null: false
    t.integer "crmb_opportunity_id"
    t.integer "crmb_activity_id"
    t.integer "crmb_task_id"
    t.varchar "notes", limit: 200
    t.varchar "notes_type", limit: 25
    t.varchar "user_code", limit: 25
    t.integer "user_id"
    t.datetime "trans_date", precision: nil
    t.varchar "crmb_contact_name", limit: 100
    t.varchar "customer_contact_name", limit: 100
  end

  create_table "crmb_prospect_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25
    t.varchar "name", limit: 50
  end

  create_table "crmb_prospect_group_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_group_id"
    t.varchar "customer_group_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "crmb_prospect_id"
    t.varchar "crmb_prospect_code", limit: 25
  end

  create_table "crmb_prospects", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "code", limit: 25, null: false
    t.integer "parent_account_id"
    t.varchar "parent_account_code", limit: 25
    t.varchar "salutation", limit: 4
    t.varchar "company_name", limit: 100
    t.integer "crmb_prospect_category_id"
    t.varchar "crmb_prospect_category_code", limit: 25
    t.integer "crmb_contact_id"
    t.varchar "relationship_type", limit: 4
    t.varchar "address_type", limit: 1
    t.varchar "business_territory", limit: 18
    t.varchar "industry", limit: 4
    t.varchar "ownership_type", limit: 4
    t.varchar "preferred_contact_method", limit: 4
    t.varchar "preferred_contact_time", limit: 1
    t.varchar "preferred_contact_day", limit: 4
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "address_name", limit: 100
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 200
    t.varchar "website", limit: 150
    t.varchar "city", limit: 50
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 25
    t.varchar "country", limit: 20
    t.varchar "ship_via_code", limit: 25
    t.varchar "term_code", limit: 25
    t.decimal "annual_revenue", precision: 12, scale: 2
    t.decimal "credit_limit", precision: 12, scale: 2
    t.decimal "no_of_employees", precision: 10
    t.integer "salesperson_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "description", limit: 100
    t.varchar "credit_hold_flag", limit: 1
    t.varchar "allow_email", limit: 1
    t.varchar "allow_phone_Call", limit: 1
    t.varchar "allow_fax", limit: 1
    t.varchar "allow_mail", limit: 1
    t.varchar "send_marketing_material", limit: 1
    t.varchar "email_addresses", limit: 200
    t.datetime "start_date", precision: nil
    t.varchar "allow_send_catalog", limit: 1
    t.varchar "group1", limit: 25
    t.varchar "group2", limit: 25
    t.varchar "group3", limit: 25
    t.varchar "group4", limit: 25
    t.varchar "group5", limit: 25
    t.varchar "customer_flag", limit: 1
    t.integer "catalog_qty"
    t.varchar "whr_we_met", limit: 100
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "corr_dept_email", limit: 200
    t.varchar "account_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "asi_number", limit: 50
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "other", limit: 25
    t.integer "billto_id"
    t.varchar "billto_code", limit: 25
    t.varchar "phone2", limit: 50
    t.varchar "territory", limit: 25
    t.varchar "meta_tag", limit: 2000
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
  end

  create_table "crmb_task_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "crmb_task_id", null: false
    t.varchar "contact_name", limit: 100
    t.varchar "contact_first_name", limit: 50
    t.varchar "contact_last_name", limit: 50
    t.varchar "contact_phone1", limit: 50
    t.varchar "contact_phone2", limit: 50
    t.varchar "default_contact_flag", limit: 1
    t.varchar "contact_email", limit: 50
    t.varchar "contact_address1", limit: 50
    t.varchar "contact_address2", limit: 50
    t.varchar "contact_city", limit: 25
    t.varchar "contact_state", limit: 25
    t.varchar "contact_zip", limit: 15
    t.varchar "contact_phone3", limit: 50
    t.varchar "contact_phone4", limit: 50
    t.varchar "job_title", limit: 50
    t.index ["crmb_task_id"], name: "idx_crmb_task_contacts_crmb_task_id"
  end

  create_table "crmb_task_followups", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "follow_by_id"
    t.varchar "follow_by_code", limit: 25
    t.datetime "follow_on", precision: nil
    t.varchar "remark", limit: 200
    t.varchar "serial_no", limit: 8, null: false
    t.integer "crmb_task_id", null: false
    t.varchar "status", limit: 18
    t.datetime "next_follow_up_date", precision: nil
    t.varchar "next_follow_up_task", limit: 25
    t.integer "assigned_to_id"
    t.varchar "assigned_to_code", limit: 25
    t.index ["crmb_task_id"], name: "idx_crmb_task_followups_crmb_task_id"
  end

  create_table "crmb_task_followups_backup", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "follow_by_id"
    t.varchar "follow_by_code", limit: 25
    t.datetime "follow_on", precision: nil
    t.varchar "remark", limit: 200
    t.varchar "serial_no", limit: 8, null: false
    t.integer "crmb_task_id", null: false
    t.varchar "status", limit: 18
    t.datetime "next_follow_up_date", precision: nil
    t.varchar "next_follow_up_task", limit: 25
    t.integer "assigned_to_id"
    t.varchar "assigned_to_code", limit: 25
  end

  create_table "crmb_tasks", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 8, null: false
    t.integer "crmb_prospect_id"
    t.varchar "crmb_prospect_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.integer "assigned_user_id"
    t.integer "assigned_to_id"
    t.varchar "assigned_to_code", limit: 25
    t.integer "assigned_by_id"
    t.varchar "assigned_by_code", limit: 25
    t.integer "crmb_contact_id"
    t.datetime "trans_date", precision: nil
    t.varchar "description", limit: 500
    t.datetime "due_date", precision: nil
    t.varchar "duration", limit: 25
    t.varchar "location", limit: 50
    t.varchar "status", limit: 18
    t.varchar "priority", limit: 18
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.varchar "reminder_flag", limit: 1
    t.datetime "reminder_datetime", precision: nil
    t.varchar "follow_up_flag", limit: 1
    t.datetime "follow_up_date", precision: nil
    t.varchar "follow_up_by_code", limit: 25
    t.integer "follow_up_by_id"
    t.varchar "follow_up_remark", limit: 200
    t.datetime "next_follow_up_date", precision: nil
    t.varchar "next_follow_up_task", limit: 25
    t.varchar "subject", limit: 25
    t.integer "salesperson_id"
    t.varchar "crmb_contact_name", limit: 100
    t.varchar "customer_contact_name", limit: 100
    t.varchar "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.varchar "ref_type", limit: 1
    t.varchar "close_task_description", limit: 200
    t.integer "closed_by_id"
    t.varchar "closed_by_code", limit: 25
    t.varchar "start_hour", limit: 2
    t.varchar "start_minute", limit: 2
    t.varchar "start_date_time_format", limit: 2
    t.varchar "end_hour", limit: 2
    t.varchar "end_minute", limit: 2
    t.varchar "end_date_time_format", limit: 2
    t.datetime "close_date", precision: nil
    t.varchar "close_hour", limit: 2
    t.varchar "close_minute", limit: 2
    t.varchar "close_date_time_format", limit: 2
    t.varchar "timezone", limit: 10
    t.varchar "close_timezone", limit: 10
    t.varchar "close_status", limit: 50
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "send_invitation", limit: 1
    t.varchar "regarding", limit: 100
    t.varchar "send_email", limit: 1
    t.index ["crmb_prospect_id"], name: "idx_crmb_tasks_prospect_id"
    t.index ["trans_no", "trans_flag"], name: "idx_crmb_tasks_trans_no_trans_flag"
  end

  create_table "current_aim", id: false, force: :cascade do |t|
    t.float "AIM MAP ID"
    t.string "CONTACT", limit: 255
    t.string "DISTRIBUTOR NAME", limit: 255
    t.string "ADRRESS", limit: 255
    t.string "CITY", limit: 255
    t.string "STATE", limit: 255
    t.string "ZIP", limit: 255
    t.string "COUNTRY", limit: 255
    t.string "PHONE", limit: 255
    t.string "EMAIL", limit: 255
    t.string "ASI #", limit: 255
    t.string "PPAI #", limit: 255
    t.string "UPIC ", limit: 255
    t.string "SAGE #", limit: 255
    t.string "SALES VOLUME", limit: 255
    t.string "Top Market #1", limit: 255
    t.string "Top Market #2", limit: 255
    t.string "Top Market #3", limit: 255
    t.datetime "Date Joined AIM", precision: nil
  end

  create_table "customer_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "catalog_item_code", limit: 25
    t.varchar "catalog_item_description", limit: 200
    t.varchar "catalog_item_price", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "idx_customer_actvts_customer_id"
  end

  create_table "customer_address_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "tracking_no", limit: 100
    t.varchar "company_name", limit: 50
    t.char "account_number", limit: 50
    t.char "plan_number", limit: 50
    t.datetime "invoice_date", precision: nil
    t.datetime "trans_date", precision: nil
    t.varchar "incorrect_name", limit: 50
    t.varchar "incorrect_receiver_name", limit: 50
    t.varchar "incorrect_receiver_company_name", limit: 50
    t.varchar "incorrect_address", limit: 100
    t.varchar "incorrect_city", limit: 50
    t.char "incorrect_state", limit: 50
    t.char "incorrect_zip", limit: 20
    t.char "customer_code", limit: 25
    t.integer "customer_id"
    t.char "package_ref1", limit: 25
    t.char "package_ref2", limit: 25
    t.char "package_ref3", limit: 25
    t.char "package_ref4", limit: 25
    t.char "package_ref5", limit: 25
    t.char "shipment_ref1", limit: 50
    t.char "shipment_ref2", limit: 50
    t.char "sender_name", limit: 50
    t.char "sender_company_name", limit: 50
    t.char "sender_address", limit: 100
    t.char "sender_city", limit: 50
    t.char "sender_zip", limit: 20
    t.varchar "correct_name", limit: 50
    t.varchar "correct_receiver_name", limit: 50
    t.varchar "correct_receiver_company_name", limit: 50
    t.varchar "correct_address", limit: 100
    t.varchar "correct_city", limit: 50
    t.char "correct_state", limit: 50
    t.char "correct_zip", limit: 20
  end

  create_table "customer_advance_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_advance_id"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "apply_flag", limit: 1
    t.varchar "ref_trans_bk_no", limit: 25
    t.datetime "ref_trans_date", precision: nil
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.varchar "ref_no", limit: 20
    t.varchar "invoice_no", limit: 18
    t.varchar "invoice_bk", limit: 4
    t.datetime "invoice_date", precision: nil
    t.varchar "credit_invoice_no", limit: 18
    t.varchar "credit_invoice_bk", limit: 4
    t.datetime "credit_invoice_date", precision: nil
    t.index ["customer_advance_id"], name: "idx_customer_adv_lines_customer_id"
    t.index ["customer_advance_id"], name: "idx_customer_advance_line_adv_id"
  end

  create_table "customer_advances", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "receipt_type", limit: 4
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.integer "soldto_id"
    t.integer "parent_id"
    t.varchar "parent_code", limit: 25
    t.integer "bank_id"
    t.varchar "bank_code", limit: 25
    t.integer "gl_account_id"
    t.varchar "gl_account_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "received_amt", precision: 12, scale: 2
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.integer "deposit_no"
    t.varchar "remarks", limit: 255
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "ref_trans_type", limit: 1
    t.datetime "ref_trans_date", precision: nil
    t.varchar "receipt_no", limit: 18
    t.varchar "receipt_bk", limit: 4
    t.datetime "receipt_date", precision: nil
    t.varchar "invoice_no", limit: 18
    t.varchar "invoice_bk", limit: 4
    t.datetime "invoice_date", precision: nil
    t.varchar "credit_invoice_no", limit: 18
    t.varchar "credit_invoice_bk", limit: 4
    t.datetime "credit_invoice_date", precision: nil
    t.datetime "discount_date", precision: nil
    t.decimal "discount_per", precision: 6, scale: 2
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "idx_ccustomer_advances_trans_no"
    t.index ["customer_id"], name: "idx_customer_advances_customer_id"
    t.index ["customer_id"], name: "idx_customer_advncs_customer_id"
  end

  create_table "customer_asirankings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", default: 0
    t.varchar "serial_no", limit: 6
    t.datetime "ranking_date", precision: nil
    t.varchar "asi_ranking", limit: 10
    t.varchar "remarks", limit: 100
    t.integer "suppliers_reporting"
    t.integer "bankruptcies"
    t.decimal "collection", precision: 12, scale: 2
    t.decimal "writeoff", precision: 12, scale: 2
    t.decimal "nsf", precision: 12, scale: 2
    t.decimal "disputes", precision: 12, scale: 2
    t.decimal "dbt", precision: 12, scale: 2
    t.string "avgpaytime_curr6mths", limit: 25
    t.string "avgpaytime_prev6mths", limit: 25
    t.string "avgpaytime_industry", limit: 25
    t.decimal "highcreditext_current", precision: 12, scale: 2
    t.decimal "highcreditext_previous", precision: 12, scale: 2
    t.decimal "highcreditext_industry", precision: 12, scale: 2
    t.decimal "numpurchases_current", precision: 12, scale: 2
    t.decimal "numpurchases_previous", precision: 12, scale: 2
    t.decimal "numpurchases_industry", precision: 12, scale: 2
    t.decimal "volpurchases_current", precision: 12, scale: 2
    t.decimal "volpurchases_previous", precision: 12, scale: 2
    t.decimal "volpurchases_industry", precision: 12, scale: 2
    t.decimal "avghighcredit_current", precision: 12, scale: 2
    t.decimal "avghighcredit_previous", precision: 12, scale: 2
    t.decimal "avghighcredit_industry", precision: 12, scale: 2
    t.decimal "avginvoiceamt_current", precision: 12, scale: 2
    t.decimal "avginvoiceamt_previous", precision: 12, scale: 2
    t.decimal "avginvoiceamt_industry", precision: 12, scale: 2
    t.index ["customer_id"], name: "idx_customer_asirnkngs_customer_id"
  end

  create_table "customer_beore_open_so_customer", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "phone2", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "cell_no", limit: 15
    t.varchar "email", limit: 200
    t.integer "customer_category_id"
    t.integer "tax_id"
    t.decimal "discount_per", precision: 5, scale: 2
    t.decimal "discount_days", precision: 5
    t.decimal "due_days", precision: 5
    t.varchar "inv_type", limit: 4
    t.text_basic "notes_text"
    t.varchar "territory", limit: 25
    t.varchar "territory2", limit: 10
    t.varchar "territory3", limit: 10
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1
    t.varchar "salesperson_code", limit: 25
    t.varchar "message_id", limit: 8
    t.varchar "inv_print_no", limit: 8
    t.varchar "shipping_code", limit: 255
    t.varchar "website", limit: 150
    t.varchar "email_yn", limit: 1
    t.varchar "fax_yn", limit: 1
    t.varchar "print_yn", limit: 1
    t.varchar "message_yn", limit: 1
    t.varchar "paymentpriority", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ein_no", limit: 20
    t.datetime "valid_dt", precision: nil
    t.varchar "udf1", limit: 100
    t.varchar "udf2", limit: 100
    t.varchar "udf3", limit: 100
    t.varchar "udf4", limit: 100
    t.varchar "udf5", limit: 100
    t.varchar "udf6", limit: 100
    t.varchar "dunning_yn", limit: 1
    t.decimal "salescomm_per", precision: 5, scale: 2
    t.decimal "coop_per", precision: 5, scale: 2
    t.integer "billto_id"
    t.decimal "base_goldprice", precision: 12, scale: 5
    t.varchar "memo_term_code", limit: 25
    t.varchar "invoice_term_code", limit: 25
    t.varchar "stop_ship", limit: 1, null: false
    t.varchar "jbt_ranking", limit: 10
    t.varchar "credit_approval_flag", limit: 1
    t.varchar "blacklisted_flag", limit: 1
    t.varchar "bank_account_no", limit: 30
    t.varchar "wfca_flag", limit: 1
    t.varchar "passport_no", limit: 30
    t.varchar "guarantee_name", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "contact2", limit: 50
    t.varchar "contact3", limit: 50
    t.varchar "contact4", limit: 50
    t.varchar "contact1_phone", limit: 15
    t.varchar "contact2_phone", limit: 15
    t.varchar "inactive", limit: 1
    t.varchar "bank_name", limit: 50
    t.varchar "bank_address1", limit: 50
    t.varchar "bank_address2", limit: 50
    t.varchar "bank_phone", limit: 50
    t.varchar "bank_fax", limit: 50
    t.varchar "bank_contact_person", limit: 50
    t.varchar "so_partial_ship_flag", limit: 1
    t.varchar "so_item_partial_ship_flag", limit: 1
    t.varchar "collection", limit: 1
    t.decimal "impairment_percent", precision: 6, scale: 2
    t.varchar "style_suffix", limit: 2
    t.varchar "location_code", limit: 25
    t.varchar "type1", limit: 4
    t.varchar "type2", limit: 4
    t.decimal "postdated_checks", precision: 4
    t.decimal "return_checks", precision: 4
    t.integer "gl_account1_id"
    t.integer "gl_account2_id"
    t.integer "gl_account3_id"
    t.integer "gl_account4_id"
    t.varchar "password", limit: 20
    t.varchar "login_code", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "alternate_email_id", limit: 100
    t.varchar "customer_type", limit: 1
    t.varchar "web_access_flag", limit: 1
    t.varchar "gender", limit: 25
    t.varchar "title", limit: 25
    t.varchar "suffix", limit: 25
    t.varchar "birth_date", limit: 6
    t.varchar "account_type", limit: 25
    t.varchar "paper_proof_flag", limit: 1
    t.varchar "asi_number", limit: 50
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "class_name", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "other", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "payment_gateway_code", limit: 50
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_category_code", limit: 25
    t.varchar "billto_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "internal_code", limit: 25
    t.varchar "image_name", limit: 100
    t.varchar "free_shipping_flag", limit: 1
    t.varchar "third_party_shipping_flag", limit: 1
    t.varchar "third_party_account_number", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "consignment_flag", limit: 1
    t.varchar "email_cc", limit: 300
    t.varchar "authorization_required", limit: 1
    t.integer "three_year_rating"
    t.integer "one_year_rating"
    t.varchar "logo_image", limit: 100
    t.varchar "promo_image", limit: 100
    t.varchar "salesperson_auto_update", limit: 1
    t.varchar "credit_score", limit: 25
  end

  create_table "customer_buying_groups", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", null: false
    t.varchar "buying_group_id", limit: 25
    t.varchar "buying_id", limit: 50
    t.varchar "default_buying_group_flag", limit: 1
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.index ["customer_id"], name: "idx_customer_buying_group_customer_id"
  end

  create_table "customer_buying_groups_20220311", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_id", null: false
    t.varchar "buying_group_id", limit: 25
    t.varchar "buying_id", limit: 50
    t.varchar "default_buying_group_flag", limit: 1
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
  end

  create_table "customer_card_transaction_logs", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.datetime "trans_date", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "method", limit: 50
    t.integer "customer_id"
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "card_last_four_digits", limit: 4
    t.varchar "card_type", limit: 25
    t.varchar "card_expiry_mmyy", limit: 4
    t.varchar "card_first_name", limit: 50
    t.varchar "card_last_name", limit: 50
    t.varchar "credit_card_process", limit: 1
    t.varchar "authorized_response_code", limit: 50
    t.varchar "authorized_response_subcode", limit: 50
    t.varchar "authorized_response_reason_code", limit: 50
    t.varchar "authorized_response_reason_text", limit: 50
    t.varchar "authorization_code", limit: 50
    t.decimal "authorized_amt", precision: 12, scale: 2
    t.varchar "payment_capture_flag", limit: 1, default: "N"
    t.varchar "captured_authorization_code", limit: 50
    t.decimal "captured_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "captured_response_code", limit: 50
    t.varchar "captured_response_subcode", limit: 50
    t.varchar "captured_response_reason_code", limit: 50
    t.varchar "captured_response_reason_text", limit: 50
    t.varchar "message_code", limit: 25
    t.varchar "message_text", limit: 500
    t.varchar "payment_release_flag", limit: 1, default: "N"
    t.varchar "customer_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "account_period_code", limit: 25
    t.varchar "transaction_code", limit: 50
    t.varchar "process_type", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "company", limit: 50
    t.varchar "address", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.integer "ref_trans_id"
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.integer "payment_released_by_user_id"
    t.datetime "payment_released_at", precision: nil
    t.varchar "payment_released_gateway_response", limit: 200
    t.varchar "payment_released_remark", limit: 500
    t.varchar "system_type", limit: 10
  end

  create_table "customer_card_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.datetime "trans_date", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "method", limit: 50
    t.integer "customer_id", null: false
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "card_last_four_digits", limit: 4
    t.varchar "card_type", limit: 25
    t.varchar "card_expiry_mmyy", limit: 4
    t.varchar "card_first_name", limit: 50
    t.varchar "card_last_name", limit: 50
    t.varchar "credit_card_process", limit: 1
    t.varchar "authorized_response_code", limit: 50
    t.varchar "authorized_response_subcode", limit: 50
    t.varchar "authorized_response_reason_code", limit: 50
    t.varchar "authorized_response_reason_text", limit: 50
    t.varchar "authorization_code", limit: 50
    t.decimal "authorized_amt", precision: 12, scale: 2
    t.varchar "payment_capture_flag", limit: 1, default: "N"
    t.varchar "captured_authorization_code", limit: 50
    t.decimal "captured_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "captured_response_code", limit: 50
    t.varchar "captured_response_subcode", limit: 50
    t.varchar "captured_response_reason_code", limit: 50
    t.varchar "captured_response_reason_text", limit: 50
    t.varchar "message_code", limit: 25
    t.varchar "message_text", limit: 500
    t.varchar "payment_release_flag", limit: 1, default: "N"
    t.varchar "customer_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "account_period_code", limit: 25
    t.varchar "transaction_code", limit: 50
    t.varchar "process_type", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "company", limit: 50
    t.varchar "address", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.integer "ref_trans_id"
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.integer "payment_released_by_user_id"
    t.datetime "payment_released_at", precision: nil
    t.varchar "payment_released_gateway_response", limit: 200
    t.varchar "payment_released_remark", limit: 500
    t.varchar "system_type", limit: 10
  end

  create_table "customer_card_transactions_20231204", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.datetime "trans_date", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "method", limit: 50
    t.integer "customer_id", null: false
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "card_last_four_digits", limit: 4
    t.varchar "card_type", limit: 25
    t.varchar "card_expiry_mmyy", limit: 4
    t.varchar "card_first_name", limit: 50
    t.varchar "card_last_name", limit: 50
    t.varchar "credit_card_process", limit: 1
    t.varchar "authorized_response_code", limit: 50
    t.varchar "authorized_response_subcode", limit: 50
    t.varchar "authorized_response_reason_code", limit: 50
    t.varchar "authorized_response_reason_text", limit: 50
    t.varchar "authorization_code", limit: 50
    t.decimal "authorized_amt", precision: 12, scale: 2
    t.varchar "payment_capture_flag", limit: 1
    t.varchar "captured_authorization_code", limit: 50
    t.decimal "captured_amt", precision: 12, scale: 2
    t.varchar "captured_response_code", limit: 50
    t.varchar "captured_response_subcode", limit: 50
    t.varchar "captured_response_reason_code", limit: 50
    t.varchar "captured_response_reason_text", limit: 50
    t.varchar "message_code", limit: 25
    t.varchar "message_text", limit: 500
    t.varchar "payment_release_flag", limit: 1
    t.varchar "customer_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "account_period_code", limit: 25
    t.varchar "transaction_code", limit: 50
    t.varchar "process_type", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "company", limit: 50
    t.varchar "address", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.integer "ref_trans_id"
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.integer "payment_released_by_user_id"
    t.datetime "payment_released_at", precision: nil
    t.varchar "payment_released_gateway_response", limit: 200
    t.varchar "payment_released_remark", limit: 500
    t.varchar "system_type", limit: 10
  end

  create_table "customer_card_void_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "customer_id", null: false
    t.varchar "customer_code", limit: 25
    t.varchar "card_last_four_digits", limit: 4
    t.varchar "card_type", limit: 25
    t.varchar "card_expiry_mmyy", limit: 4
    t.varchar "card_first_name", limit: 50
    t.varchar "card_last_name", limit: 50
    t.decimal "released_amt", precision: 12, scale: 2
    t.varchar "account_period_code", limit: 25
    t.varchar "transaction_code", limit: 50
    t.varchar "remarks", limit: 255
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.varchar "customer_payment_profile_code", limit: 50
  end

  create_table "customer_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.decimal "discount_per", precision: 6, scale: 2
    t.integer "discount_days"
    t.integer "due_days"
    t.varchar "term_code", limit: 25
    t.integer "gl_accounts_receivable_id"
    t.integer "gl_income_account_id"
    t.integer "gl_discount_account_id"
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_customer_categories_code", unique: true
  end

  create_table "customer_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.varchar "salutation", limit: 4
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "job_title", limit: 50
    t.varchar "department", limit: 50
    t.varchar "manager", limit: 50
    t.varchar "spouse_name", limit: 50
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "business_phone", limit: 50
    t.varchar "manager_phone", limit: 50
    t.varchar "home_phone", limit: 50
    t.varchar "cell_phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "address_type", limit: 50
    t.varchar "role", limit: 50
    t.varchar "preferred_contact_method", limit: 50
    t.varchar "gender", limit: 15
    t.varchar "marital_status", limit: 15
    t.datetime "date_of_birth", precision: nil
    t.datetime "date_of_marraige", precision: nil
    t.decimal "credit_limit", precision: 12, scale: 2, default: 0.0
    t.varchar "credit_hold_flag", limit: 1
    t.varchar "allow_email", limit: 1
    t.varchar "allow_phone_call", limit: 1
    t.varchar "allow_fax", limit: 1
    t.varchar "allow_mail", limit: 1
    t.varchar "send_marketing_material", limit: 1
    t.varchar "preferred_contact_time", limit: 50
    t.varchar "preferred_contact_day", limit: 50
    t.varchar "prefered_contact", limit: 50
    t.varchar "code", limit: 25
    t.varchar "default_contact_flag", limit: 1, default: "N"
    t.varchar "secondary_phone_no", limit: 50
    t.varchar "secondary_cell_no", limit: 50
    t.varchar "secondary_email", limit: 50
    t.varchar "secondary_fax", limit: 50
    t.varchar "secondary_direct", limit: 50
    t.varchar "secondary_phone_extn", limit: 50
    t.varchar "secondary_address_name", limit: 50
    t.varchar "secondary_address1", limit: 50
    t.varchar "secondary_address2", limit: 50
    t.varchar "secondary_city", limit: 25
    t.varchar "secondary_state", limit: 25
    t.varchar "secondary_zip", limit: 15
    t.varchar "secondary_country", limit: 20
    t.varchar "customer_code", limit: 25
    t.varchar "phone1_ext", limit: 25
    t.varchar "assistant", limit: 50
    t.varchar "assistant_contact", limit: 50
    t.varchar "assistant_title", limit: 50
    t.varchar "assistant_phone", limit: 50
    t.varchar "assistant_phone_ext", limit: 25
    t.varchar "assistant_email", limit: 50
    t.varchar "assistant_cell_phone", limit: 50
    t.varchar "contact_image", limit: 100
    t.integer "dob_month"
    t.integer "dob_date"
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
    t.index ["customer_id"], name: "idx_customer_cnt_customer_id"
    t.index ["email"], name: "idx_customer_contacts_email_name"
    t.index ["first_name"], name: "idx_customer_contacts_first_name"
    t.index ["last_name"], name: "idx_customer_contacts_last_name"
  end

  create_table "customer_daily_credit_limits", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", null: false
    t.varchar "customer_code", limit: 25
    t.varchar "credit_limit_date", limit: 25
    t.decimal "credit_limit", precision: 12, scale: 2, default: 0.0
    t.index ["customer_id"], name: "idx_customer_dly_crd_lmit_customer_"
  end

  create_table "customer_eqp", id: false, force: :cascade do |t|
    t.varchar "customer_code", limit: 50
    t.varchar "name", limit: 50
  end

  create_table "customer_eqp_sheet", id: false, force: :cascade do |t|
    t.varchar "customer_code", limit: 50
    t.varchar "name", limit: 500
  end

  create_table "customer_group_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_group_id"
    t.varchar "customer_group_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
  end

  create_table "customer_groups", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100
    t.varchar "remarks", limit: 255
    t.varchar "url", limit: 255
  end

  create_table "customer_import", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Code", limit: 255
    t.string "Customer name", limit: 255
    t.string "Category", limit: 255
    t.string "Parent #", limit: 255
    t.string "Inside Sales Rep", limit: 255
    t.string "Outside Sales Rep", limit: 255
    t.string "PP Required", limit: 255
    t.string "Authorization Required On Proof Approval", limit: 255
    t.string "Address Line 1", limit: 255
    t.string "Address Line 2", limit: 255
    t.string "City", limit: 255
    t.string "State", limit: 255
    t.float "Zip"
    t.string "Territory", limit: 255
    t.string "Country", limit: 255
    t.string "Phone1", limit: 255
    t.string "Phone2", limit: 255
    t.string "Fax", limit: 255
    t.string "Website", limit: 255
    t.string "Correspondence", limit: 255
    t.string "Accounting", limit: 255
    t.string "Shipping", limit: 255
    t.string "Artwork", limit: 255
    t.string "Purchase", limit: 255
    t.float "Invoice Term"
    t.float "Credit Limit"
    t.string "Bill Transportation To", limit: 255
    t.string "Provider", limit: 255
    t.string "Third Party Account #", limit: 255
    t.float "ASI #"
    t.string "PPAI #", limit: 255
    t.string "SAGE", limit: 255
    t.string "DC", limit: 255
    t.string "AFFILIATION", limit: 255
    t.string "ORGANIZATION", limit: 255
    t.string "OTHER", limit: 255
    t.string "ID#", limit: 255
    t.varchar "actual_customer_name", limit: 200
    t.char "customer_exist", limit: 1
  end

  create_table "customer_invoice_interest_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_invoice_interest_id"
    t.integer "customer_id"
    t.varchar "serial_no", limit: 6
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "invoice_bk", limit: 8
    t.integer "invoice_id"
    t.varchar "invoice_no", limit: 8
    t.datetime "invoice_date", precision: nil
    t.varchar "term_code", limit: 25
    t.datetime "due_date", precision: nil
    t.decimal "inv_amt", precision: 12, scale: 2
    t.decimal "open_amt", precision: 12, scale: 2
    t.datetime "from_date", precision: nil
    t.datetime "to_date", precision: nil
    t.decimal "interest_per", precision: 12, scale: 2
    t.decimal "interest_amt", precision: 12, scale: 2
    t.decimal "surcharge_amt", precision: 12, scale: 2
    t.decimal "total_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
  end

  create_table "customer_invoice_interests", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", null: false
    t.varchar "name", limit: 50
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.decimal "inv_amt", precision: 12, scale: 2
    t.varchar "term_code", limit: 25
    t.datetime "due_date", precision: nil
    t.varchar "updated_by_code", limit: 25
  end

  create_table "customer_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.integer "customer_invoice_id"
    t.integer "gl_account_id"
    t.decimal "gl_amt", precision: 12, scale: 3
    t.varchar "description", limit: 50
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_invoice_id"], name: "idx_customer_invoice_lines_customer_invoice_id"
  end

  create_table "customer_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "inv_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "discount_date", precision: nil
    t.datetime "sale_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "clear_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "inv_type", limit: 4
    t.varchar "inv_no", limit: 18
    t.integer "customer_id"
    t.integer "soldto_id"
    t.integer "parent_id"
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "inv_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "clear_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "description", limit: 50
    t.varchar "customer_code", limit: 25
    t.varchar "parent_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.integer "invoice_rating"
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.varchar "ref_trans_type", limit: 1
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "buying_group_code", limit: 25
    t.varchar "buying_group2_code", limit: 25
    t.varchar_max "invoice_url"
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "idx_customer_invoice_trans_no"
    t.index ["company_id", "trans_flag", "trans_bk", "trans_no", "inv_type", "inv_no"], name: "idx_cust_invoice_inv_no"
    t.index ["trans_date", "company_id", "trans_bk", "account_period_code"], name: "_dta_index_customer_invoices_11_473924910__K12_K2_K10_K17_11"
    t.index ["trans_flag", "customer_id"], name: "customer_invoice_customer_id"
  end

  create_table "customer_item_harmonious_costs", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_id"
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.decimal "harmonious_cost", precision: 12, scale: 4
  end

  create_table "customer_item_pricings", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.bigint "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25
    t.datetime "from_date", precision: nil
    t.datetime "to_date", precision: nil
    t.varchar "charge_code", limit: 25
    t.varchar "quantity", limit: 50
    t.decimal "price", precision: 12, scale: 3
    t.decimal "column1", precision: 12, scale: 3
    t.decimal "column2", precision: 12, scale: 3
    t.decimal "column3", precision: 12, scale: 3
    t.decimal "column4", precision: 12, scale: 3
    t.decimal "column5", precision: 12, scale: 3
    t.decimal "column6", precision: 12, scale: 3
    t.decimal "column7", precision: 12, scale: 3
    t.decimal "column8", precision: 12, scale: 3
    t.decimal "column9", precision: 12, scale: 3
    t.decimal "column10", precision: 12, scale: 3
    t.integer "customer_id"
    t.integer "production_time", default: 0
    t.decimal "blank_good_price", precision: 12, scale: 3, default: 0.0
    t.decimal "column11", precision: 12, scale: 3
    t.decimal "column12", precision: 12, scale: 3
    t.decimal "column13", precision: 12, scale: 3
    t.decimal "column14", precision: 12, scale: 3
    t.decimal "column15", precision: 12, scale: 3
    t.varchar "item_type", limit: 25
    t.integer "discount_column"
    t.decimal "discount_per", precision: 5, scale: 2
    t.index ["customer_id"], name: "idx_customer_item_pricing_customer_id"
  end

  create_table "customer_item_production_days", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.bigint "customer_id", default: 0, null: false
    t.bigint "catalog_item_id", default: 0, null: false
    t.varchar "catalog_item_code", limit: 25
    t.decimal "production_day1", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day2", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day3", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day4", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day5", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day6", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day7", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day8", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day9", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day10", precision: 12, scale: 2, default: 0.0
    t.decimal "production_day11", precision: 12, scale: 2
    t.decimal "production_day12", precision: 12, scale: 2
    t.decimal "production_day13", precision: 12, scale: 2
    t.decimal "production_day14", precision: 12, scale: 2
    t.decimal "production_day15", precision: 12, scale: 2
    t.datetime "from_date", precision: nil
    t.datetime "to_date", precision: nil
    t.index ["customer_id"], name: "idx_customer_itm_prd_days_customer_id"
  end

  create_table "customer_jbtrankings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", default: 0
    t.varchar "serial_no", limit: 6
    t.datetime "ranking_date", precision: nil
    t.varchar "jbt_ranking", limit: 10
    t.varchar "remarks", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "customer_jbtrankings_customer_id"
  end

  create_table "customer_merges", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "from_customer_id", null: false
    t.varchar "from_customer_code", limit: 25
    t.integer "to_customer_id", null: false
    t.varchar "to_customer_code", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "customer_monthly_summaries", primary_key: ["customer_id", "account_period_code"], force: :cascade do |t|
    t.integer "id", null: false
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.decimal "total_sales", precision: 16, scale: 2
  end

  create_table "customer_monthly_summaries20231809", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.decimal "total_sales", precision: 16, scale: 2
  end

  create_table "customer_notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.datetime "trans_dt", precision: nil
    t.integer "user_id", default: 0
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id", default: 0
    t.varchar "serial_no", limit: 6
    t.varchar "daily_notes", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "customer_notes_customer_id"
  end

  create_table "customer_parent_changes", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.integer "parent_id"
    t.varchar "parent_code", limit: 25
    t.integer "new_parent_id"
    t.varchar "new_parent_code", limit: 25
  end

  create_table "customer_payment_profiles", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.bigint "customer_id", null: false
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "card_type", limit: 50
    t.varchar "card_number", limit: 10
    t.varchar "expiration", limit: 10
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "company", limit: 50
    t.varchar "address", limit: 100
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "customer_code", limit: 25
    t.varchar "expiration_month", limit: 2
    t.varchar "expiration_year", limit: 4
    t.varchar "default_payment_profile", limit: 1
  end

  create_table "customer_payment_profiles_20210302", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.bigint "customer_id", null: false
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "card_type", limit: 50
    t.varchar "card_number", limit: 10
    t.varchar "expiration", limit: 10
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "company", limit: 50
    t.varchar "address", limit: 100
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "customer_code", limit: 25
    t.varchar "expiration_month", limit: 2
    t.varchar "expiration_year", limit: 4
    t.varchar "default_payment_profile", limit: 1
  end

  create_table "customer_payment_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.bigint "customer_id", null: false
    t.bigint "sales_order_id", null: false
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "transaction_code", limit: 50
    t.varchar "response_code", limit: 50
    t.varchar "response_subcode", limit: 50
    t.varchar "response_reason_code", limit: 50
    t.varchar "response_reason_text", limit: 50
    t.varchar "authorization_code", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "method", limit: 50
    t.decimal "amount", precision: 12, scale: 2, default: 0.0
    t.varchar "payment_capture_flag", limit: 1, default: "N"
    t.varchar "captured_authorization_code", limit: 50
    t.varchar "captured_transaction_code", limit: 50
    t.decimal "captured_amount", precision: 12, scale: 2, default: 0.0
    t.varchar "captured_response_reason_text", limit: 50
    t.varchar "message_code", limit: 25
    t.varchar "message_text", limit: 200
    t.varchar "payment_release_flag", limit: 1, default: "N"
    t.varchar "captured_response_code", limit: 50
    t.varchar "captured_response_subcode", limit: 50
  end

  create_table "customer_profile_addresses", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.bigint "customer_id", null: false
    t.varchar "customer_profile_address_code", limit: 50
  end

  create_table "customer_receipt_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "voucher_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "voucher_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "voucher_flag", limit: 1
    t.varchar "apply_flag", limit: 1
    t.integer "customer_receipt_id"
    t.integer "gl_account_id"
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.varchar "apply_to", limit: 10
    t.varchar "ref_no", limit: 20
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_receipt_id", "company_id", "voucher_date", "voucher_no"], name: "_dta_index_customer_receipt_lines_11_1081927076__K19_K2_K14_K12_22"
    t.index ["customer_receipt_id", "voucher_date", "company_id", "voucher_no", "id", "trans_date"], name: "_dta_index_customer_receipt_lines_11_1081927076__K19_K14_K2_K12_K1_K13_22_24"
    t.index ["customer_receipt_id"], name: "idx_customer_receipt_lines_customer_receipt_id"
    t.index ["voucher_date", "voucher_no", "id", "customer_receipt_id", "company_id", "trans_date"], name: "_dta_index_customer_receipt_lines_11_1081927076__K14_K12_K1_K19_K2_K13_22_24"
  end

  create_table "customer_receipts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "receipt_type", limit: 4
    t.integer "customer_id"
    t.integer "soldto_id"
    t.integer "parent_id"
    t.integer "bank_id"
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "received_amt", precision: 12, scale: 2
    t.decimal "applied_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.integer "deposit_no"
    t.varchar "bank_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "parent_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.varchar "ref_trans_type", limit: 1
    t.varchar "main_trans_no", limit: 18
    t.datetime "discount_date", precision: nil
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "payment_serial_no", limit: 6
    t.index ["company_id", "account_period_code", "trans_type", "trans_bk", "trans_no", "trans_date"], name: "idx_customer_receipts_trans_no"
    t.index ["company_id", "trans_date", "trans_bk", "account_period_code", "trans_no"], name: "_dta_index_customer_receipts_11_1513928615__K2_K12_K10_K15_K11"
    t.index ["company_id", "trans_flag", "trans_no", "account_period_code"], name: "idx_customer_receipt_trans_no_account_period"
    t.index ["customer_id"], name: "customer_receipts_customer_id"
    t.index ["trans_date", "account_period_code", "company_id", "trans_bk", "trans_no"], name: "_dta_index_customer_receipts_11_1513928615__K12_K15_K2_K10_K11"
    t.index ["trans_flag", "account_period_code", "trans_date", "trans_bk", "trans_no", "customer_id", "parent_id", "id", "company_id"], name: "_dta_index_customer_receipts_11_1513928615__K8_K15_K12_K10_K11_K20_K22_K1_K2_14_18_25_26_30_34"
  end

  create_table "customer_relationships", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.varchar "relationship", limit: 50
    t.varchar "related_customer_code", limit: 25
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "phone", limit: 50
    t.varchar "email", limit: 100
    t.varchar "birth_date", limit: 6
    t.varchar "anniversary_date", limit: 6
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "idx_customer_rltnship_customer_id"
  end

  create_table "customer_salespeople", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.varchar "customer_code", limit: 255
    t.integer "salesperson_id"
    t.varchar "salesperson_code", limit: 255
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "idx_customer_salesppl_customer_id"
  end

  create_table "customer_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, default: ""
    t.integer "customer_id", default: 0
    t.varchar "serial_no", limit: 6
    t.varchar "contact1", limit: 50, default: ""
    t.varchar "address1", limit: 50, default: ""
    t.varchar "address2", limit: 50, default: ""
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "phone1", limit: 50, default: ""
    t.varchar "fax1", limit: 50, default: ""
    t.varchar "old_code", limit: 25, default: ""
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "account_number", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "shipping_alias_code", limit: 25
    t.varchar "shipping_alias_name", limit: 100
    t.integer "sequence_no"
    t.varchar "udf1", limit: 255
    t.varchar "udf2", limit: 255
    t.varchar "udf3", limit: 255
    t.varchar "udf4", limit: 255
    t.varchar "udf5", limit: 255
    t.varchar "residential_indicator", limit: 1
    t.index ["customer_id"], name: "customer_shippings_customer_id"
  end

  create_table "customer_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.datetime "activity_date", precision: nil
    t.string "customer_activity_code", limit: 200
    t.varchar "remarks", limit: 200
    t.integer "user_id"
    t.integer "sequence_no"
    t.index ["customer_id"], name: "idx_customer_trn_acvts_customer_id"
  end

  create_table "customer_wishlists", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "customer_id"
    t.datetime "wish_date", precision: nil
    t.varchar "salesperson_code", limit: 25
    t.varchar "catalog_item_code", limit: 25
    t.varchar "catalog_item_description", limit: 200
    t.varchar "item_for_whom", limit: 100
    t.varchar "catalog_item_price", limit: 255
    t.varchar "decimal", limit: 255
    t.varchar "remarks", limit: 200
    t.varchar "updated_by_code", limit: 25
    t.index ["customer_id"], name: "idx_customer_wshlst_customer_id"
  end

  create_table "customers", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by", default: 0
    t.datetime "created_at", precision: nil
    t.integer "updated_by", default: 0
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100, default: " "
    t.varchar "address1", limit: 50, default: " "
    t.varchar "address2", limit: 50, default: " "
    t.varchar "city", limit: 25, default: " "
    t.varchar "state", limit: 25, default: " "
    t.varchar "zip", limit: 15, default: " "
    t.varchar "country", limit: 20, default: " "
    t.varchar "phone1", limit: 50, default: " "
    t.varchar "phone2", limit: 50, default: " "
    t.varchar "fax1", limit: 50, default: " "
    t.varchar "cell_no", limit: 15, default: " "
    t.varchar "email", limit: 200, default: " "
    t.integer "customer_category_id", default: 0
    t.integer "tax_id", default: 0
    t.decimal "discount_per", precision: 5, scale: 2, default: 0.0
    t.decimal "discount_days", precision: 5
    t.decimal "due_days", precision: 5
    t.varchar "inv_type", limit: 4
    t.text_basic "notes_text"
    t.varchar "territory", limit: 25, default: " "
    t.varchar "territory2", limit: 10, default: " "
    t.varchar "territory3", limit: 10, default: " "
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1, default: "A"
    t.varchar "salesperson_code", limit: 25
    t.varchar "message_id", limit: 8, default: " "
    t.varchar "inv_print_no", limit: 8, default: " "
    t.varchar "shipping_code", limit: 255
    t.varchar "website", limit: 150, default: " "
    t.varchar "email_yn", limit: 1, default: "N"
    t.varchar "fax_yn", limit: 1, default: "N"
    t.varchar "print_yn", limit: 1, default: "N"
    t.varchar "message_yn", limit: 1, default: "N"
    t.varchar "paymentpriority", limit: 1, default: "A"
    t.varchar "ten99_yn", limit: 1, default: "N"
    t.varchar "ein_no", limit: 20, default: " "
    t.datetime "valid_dt", precision: nil
    t.varchar "udf1", limit: 100, default: " "
    t.varchar "udf2", limit: 100, default: " "
    t.varchar "udf3", limit: 100, default: " "
    t.varchar "udf4", limit: 100, default: " "
    t.varchar "udf5", limit: 100, default: " "
    t.varchar "udf6", limit: 100, default: " "
    t.varchar "dunning_yn", limit: 1, default: "N"
    t.decimal "salescomm_per", precision: 5, scale: 2, default: 0.0
    t.decimal "coop_per", precision: 5, scale: 2, default: 0.0
    t.integer "billto_id"
    t.decimal "base_goldprice", precision: 12, scale: 5, default: 0.0
    t.varchar "memo_term_code", limit: 25, default: " "
    t.varchar "invoice_term_code", limit: 25, default: " "
    t.varchar "stop_ship", limit: 1, default: "N", null: false
    t.varchar "jbt_ranking", limit: 10, default: " "
    t.varchar "credit_approval_flag", limit: 1, default: "Y"
    t.varchar "blacklisted_flag", limit: 1, default: " "
    t.varchar "bank_account_no", limit: 30, default: " "
    t.varchar "wfca_flag", limit: 1, default: "N"
    t.varchar "passport_no", limit: 30, default: " "
    t.varchar "guarantee_name", limit: 50, default: " "
    t.varchar "contact1", limit: 50, default: " "
    t.varchar "contact2", limit: 50, default: " "
    t.varchar "contact3", limit: 50, default: " "
    t.varchar "contact4", limit: 50, default: " "
    t.varchar "contact1_phone", limit: 15, default: " "
    t.varchar "contact2_phone", limit: 15, default: " "
    t.varchar "inactive", limit: 1, default: "N"
    t.varchar "bank_name", limit: 50, default: " "
    t.varchar "bank_address1", limit: 50, default: " "
    t.varchar "bank_address2", limit: 50, default: " "
    t.varchar "bank_phone", limit: 50, default: " "
    t.varchar "bank_fax", limit: 50, default: " "
    t.varchar "bank_contact_person", limit: 50, default: " "
    t.varchar "so_partial_ship_flag", limit: 1, default: " "
    t.varchar "so_item_partial_ship_flag", limit: 1, default: "N"
    t.varchar "collection", limit: 1, default: "N"
    t.decimal "impairment_percent", precision: 6, scale: 2, default: 0.0
    t.varchar "style_suffix", limit: 2, default: "AA"
    t.varchar "location_code", limit: 25, default: "NA"
    t.varchar "type1", limit: 4
    t.varchar "type2", limit: 4
    t.decimal "postdated_checks", precision: 4
    t.decimal "return_checks", precision: 4
    t.integer "gl_account1_id"
    t.integer "gl_account2_id"
    t.integer "gl_account3_id"
    t.integer "gl_account4_id"
    t.varchar "password", limit: 20
    t.varchar "login_code", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "alternate_email_id", limit: 100
    t.varchar "customer_type", limit: 1, default: "W"
    t.varchar "web_access_flag", limit: 1, default: "N"
    t.varchar "gender", limit: 25
    t.varchar "title", limit: 25
    t.varchar "suffix", limit: 25
    t.varchar "birth_date", limit: 6
    t.varchar "account_type", limit: 25
    t.varchar "paper_proof_flag", limit: 1, default: "N"
    t.varchar "asi_number", limit: 50
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "class_name", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "other", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "payment_gateway_code", limit: 50
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_category_code", limit: 25
    t.varchar "billto_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "internal_code", limit: 25, default: ""
    t.varchar "image_name", limit: 100
    t.varchar "free_shipping_flag", limit: 1, default: "N"
    t.varchar "third_party_shipping_flag", limit: 1, default: "N"
    t.varchar "third_party_account_number", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "consignment_flag", limit: 1, default: "N"
    t.varchar "email_cc", limit: 300
    t.varchar "authorization_required", limit: 1
    t.integer "three_year_rating"
    t.integer "one_year_rating"
    t.varchar "logo_image", limit: 100
    t.varchar "promo_image", limit: 100
    t.varchar "salesperson_auto_update", limit: 1
    t.varchar "credit_score", limit: 25
    t.varchar "insurance_flag", limit: 1, default: "N"
    t.varchar "alias_code", limit: 25
    t.varchar "portal_user_creation", limit: 1, default: "Y"
    t.integer "avg_paying_days"
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.char "prevent_parent_pricing", limit: 1, default: "N"
    t.char "club_shipments_flag", limit: 1, default: "N"
    t.varchar "internal_salesperson_auto_update", limit: 1
    t.varchar "artwork_ftp_username", limit: 25
    t.varchar "artwork_ftp_password", limit: 25
    t.varchar "artwork_ftp_encryption_type", limit: 50
    t.char "cy_paypattern", limit: 12
    t.char "py_paypattern", limit: 12
    t.char "py2_paypattern", limit: 12
    t.varchar "aim_map_id", limit: 15
    t.varchar "buying_group_id", limit: 25
    t.varchar "domain", limit: 500
    t.char "attach_product_picture", limit: 1, default: "Y"
    t.char "upic", limit: 25
    t.varchar "four51_duns_no", limit: 50
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
    t.decimal "overdue_interest_rate", precision: 5, scale: 2, default: 0.0
    t.char "interest_on_overdue_invoices", limit: 1, default: "N"
    t.char "vip_flag", limit: 1
    t.varchar "exclude_from_asi", limit: 1, default: "N"
    t.varchar "stop_parent_order", limit: 1, default: "N"
    t.char "consolidate_emails_flag", limit: 1, default: "N"
    t.decimal "current_year_sales", precision: 16, scale: 2
    t.decimal "previous_year_sales", precision: 16, scale: 2
    t.decimal "two_year_ago_sales", precision: 16, scale: 2
    t.decimal "total_sales", precision: 16, scale: 2
    t.varchar "pricing_group", limit: 10
    t.varchar "print_reorder_slip", limit: 1, default: "Y"
    t.varchar "nationalsalesperson_code", limit: 25
    t.varchar "strategicsalesperson_code", limit: 25
    t.varchar "resale_certificate", limit: 250
    t.varchar "resale_certificate_url", limit: 500
    t.index ["address1"], name: "idx_customers_address1"
    t.index ["asi_number"], name: "idx_customers_asi_num"
    t.index ["billto_id"], name: "IX_customers_billto_id"
    t.index ["city"], name: "idx_customers_city"
    t.index ["code", "id"], name: "_dta_index_customers_11_591341171__K10_K1_23_35_57"
    t.index ["code"], name: "idx_customers_code_uniq", unique: true
    t.index ["customer_category_id"], name: "idx_customers_customer_catg_id"
    t.index ["email"], name: "idx_customers_email"
    t.index ["id", "code"], name: "_dta_index_customers_11_591341171__K1_K10"
    t.index ["name"], name: "idx_customers_name"
    t.index ["phone1"], name: "idx_customers_phone1"
    t.index ["state"], name: "idx_customers_state"
    t.index ["zip"], name: "idx_customers_zip"
  end

  create_table "customers20231809", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "phone2", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "cell_no", limit: 15
    t.varchar "email", limit: 200
    t.integer "customer_category_id"
    t.integer "tax_id"
    t.decimal "discount_per", precision: 5, scale: 2
    t.decimal "discount_days", precision: 5
    t.decimal "due_days", precision: 5
    t.varchar "inv_type", limit: 4
    t.text_basic "notes_text"
    t.varchar "territory", limit: 25
    t.varchar "territory2", limit: 10
    t.varchar "territory3", limit: 10
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1
    t.varchar "salesperson_code", limit: 25
    t.varchar "message_id", limit: 8
    t.varchar "inv_print_no", limit: 8
    t.varchar "shipping_code", limit: 255
    t.varchar "website", limit: 150
    t.varchar "email_yn", limit: 1
    t.varchar "fax_yn", limit: 1
    t.varchar "print_yn", limit: 1
    t.varchar "message_yn", limit: 1
    t.varchar "paymentpriority", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ein_no", limit: 20
    t.datetime "valid_dt", precision: nil
    t.varchar "udf1", limit: 100
    t.varchar "udf2", limit: 100
    t.varchar "udf3", limit: 100
    t.varchar "udf4", limit: 100
    t.varchar "udf5", limit: 100
    t.varchar "udf6", limit: 100
    t.varchar "dunning_yn", limit: 1
    t.decimal "salescomm_per", precision: 5, scale: 2
    t.decimal "coop_per", precision: 5, scale: 2
    t.integer "billto_id"
    t.decimal "base_goldprice", precision: 12, scale: 5
    t.varchar "memo_term_code", limit: 25
    t.varchar "invoice_term_code", limit: 25
    t.varchar "stop_ship", limit: 1, null: false
    t.varchar "jbt_ranking", limit: 10
    t.varchar "credit_approval_flag", limit: 1
    t.varchar "blacklisted_flag", limit: 1
    t.varchar "bank_account_no", limit: 30
    t.varchar "wfca_flag", limit: 1
    t.varchar "passport_no", limit: 30
    t.varchar "guarantee_name", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "contact2", limit: 50
    t.varchar "contact3", limit: 50
    t.varchar "contact4", limit: 50
    t.varchar "contact1_phone", limit: 15
    t.varchar "contact2_phone", limit: 15
    t.varchar "inactive", limit: 1
    t.varchar "bank_name", limit: 50
    t.varchar "bank_address1", limit: 50
    t.varchar "bank_address2", limit: 50
    t.varchar "bank_phone", limit: 50
    t.varchar "bank_fax", limit: 50
    t.varchar "bank_contact_person", limit: 50
    t.varchar "so_partial_ship_flag", limit: 1
    t.varchar "so_item_partial_ship_flag", limit: 1
    t.varchar "collection", limit: 1
    t.decimal "impairment_percent", precision: 6, scale: 2
    t.varchar "style_suffix", limit: 2
    t.varchar "location_code", limit: 25
    t.varchar "type1", limit: 4
    t.varchar "type2", limit: 4
    t.decimal "postdated_checks", precision: 4
    t.decimal "return_checks", precision: 4
    t.integer "gl_account1_id"
    t.integer "gl_account2_id"
    t.integer "gl_account3_id"
    t.integer "gl_account4_id"
    t.varchar "password", limit: 20
    t.varchar "login_code", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "alternate_email_id", limit: 100
    t.varchar "customer_type", limit: 1
    t.varchar "web_access_flag", limit: 1
    t.varchar "gender", limit: 25
    t.varchar "title", limit: 25
    t.varchar "suffix", limit: 25
    t.varchar "birth_date", limit: 6
    t.varchar "account_type", limit: 25
    t.varchar "paper_proof_flag", limit: 1
    t.varchar "asi_number", limit: 50
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "class_name", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "other", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "payment_gateway_code", limit: 50
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_category_code", limit: 25
    t.varchar "billto_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "internal_code", limit: 25
    t.varchar "image_name", limit: 100
    t.varchar "free_shipping_flag", limit: 1
    t.varchar "third_party_shipping_flag", limit: 1
    t.varchar "third_party_account_number", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "consignment_flag", limit: 1
    t.varchar "email_cc", limit: 300
    t.varchar "authorization_required", limit: 1
    t.integer "three_year_rating"
    t.integer "one_year_rating"
    t.varchar "logo_image", limit: 100
    t.varchar "promo_image", limit: 100
    t.varchar "salesperson_auto_update", limit: 1
    t.varchar "credit_score", limit: 25
    t.varchar "insurance_flag", limit: 1
    t.varchar "alias_code", limit: 25
    t.varchar "portal_user_creation", limit: 1
    t.integer "avg_paying_days"
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.char "prevent_parent_pricing", limit: 1
    t.char "club_shipments_flag", limit: 1
    t.varchar "internal_salesperson_auto_update", limit: 1
    t.varchar "artwork_ftp_username", limit: 25
    t.varchar "artwork_ftp_password", limit: 25
    t.varchar "artwork_ftp_encryption_type", limit: 50
    t.char "cy_paypattern", limit: 12
    t.char "py_paypattern", limit: 12
    t.char "py2_paypattern", limit: 12
    t.varchar "aim_map_id", limit: 15
    t.varchar "buying_group_id", limit: 25
    t.varchar "domain", limit: 500
    t.char "attach_product_picture", limit: 1
    t.char "upic", limit: 25
    t.varchar "four51_duns_no", limit: 50
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
    t.decimal "overdue_interest_rate", precision: 5, scale: 2
    t.char "interest_on_overdue_invoices", limit: 1
    t.char "vip_flag", limit: 1
    t.varchar "exclude_from_asi", limit: 1
    t.varchar "stop_parent_order", limit: 1
    t.char "consolidate_emails_flag", limit: 1
    t.decimal "current_year_sales", precision: 16, scale: 2
    t.decimal "previous_year_sales", precision: 16, scale: 2
    t.decimal "two_year_ago_sales", precision: 16, scale: 2
    t.decimal "total_sales", precision: 16, scale: 2
    t.varchar "pricing_group", limit: 10
    t.varchar "print_reorder_slip", limit: 1
    t.varchar "nationalsalesperson_code", limit: 25
    t.varchar "strategicsalesperson_code", limit: 25
  end

  create_table "customers_bak20230919", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "phone2", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "cell_no", limit: 15
    t.varchar "email", limit: 200
    t.integer "customer_category_id"
    t.integer "tax_id"
    t.decimal "discount_per", precision: 5, scale: 2
    t.decimal "discount_days", precision: 5
    t.decimal "due_days", precision: 5
    t.varchar "inv_type", limit: 4
    t.text_basic "notes_text"
    t.varchar "territory", limit: 25
    t.varchar "territory2", limit: 10
    t.varchar "territory3", limit: 10
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1
    t.varchar "salesperson_code", limit: 25
    t.varchar "message_id", limit: 8
    t.varchar "inv_print_no", limit: 8
    t.varchar "shipping_code", limit: 255
    t.varchar "website", limit: 150
    t.varchar "email_yn", limit: 1
    t.varchar "fax_yn", limit: 1
    t.varchar "print_yn", limit: 1
    t.varchar "message_yn", limit: 1
    t.varchar "paymentpriority", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ein_no", limit: 20
    t.datetime "valid_dt", precision: nil
    t.varchar "udf1", limit: 100
    t.varchar "udf2", limit: 100
    t.varchar "udf3", limit: 100
    t.varchar "udf4", limit: 100
    t.varchar "udf5", limit: 100
    t.varchar "udf6", limit: 100
    t.varchar "dunning_yn", limit: 1
    t.decimal "salescomm_per", precision: 5, scale: 2
    t.decimal "coop_per", precision: 5, scale: 2
    t.integer "billto_id"
    t.decimal "base_goldprice", precision: 12, scale: 5
    t.varchar "memo_term_code", limit: 25
    t.varchar "invoice_term_code", limit: 25
    t.varchar "stop_ship", limit: 1, null: false
    t.varchar "jbt_ranking", limit: 10
    t.varchar "credit_approval_flag", limit: 1
    t.varchar "blacklisted_flag", limit: 1
    t.varchar "bank_account_no", limit: 30
    t.varchar "wfca_flag", limit: 1
    t.varchar "passport_no", limit: 30
    t.varchar "guarantee_name", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "contact2", limit: 50
    t.varchar "contact3", limit: 50
    t.varchar "contact4", limit: 50
    t.varchar "contact1_phone", limit: 15
    t.varchar "contact2_phone", limit: 15
    t.varchar "inactive", limit: 1
    t.varchar "bank_name", limit: 50
    t.varchar "bank_address1", limit: 50
    t.varchar "bank_address2", limit: 50
    t.varchar "bank_phone", limit: 50
    t.varchar "bank_fax", limit: 50
    t.varchar "bank_contact_person", limit: 50
    t.varchar "so_partial_ship_flag", limit: 1
    t.varchar "so_item_partial_ship_flag", limit: 1
    t.varchar "collection", limit: 1
    t.decimal "impairment_percent", precision: 6, scale: 2
    t.varchar "style_suffix", limit: 2
    t.varchar "location_code", limit: 25
    t.varchar "type1", limit: 4
    t.varchar "type2", limit: 4
    t.decimal "postdated_checks", precision: 4
    t.decimal "return_checks", precision: 4
    t.integer "gl_account1_id"
    t.integer "gl_account2_id"
    t.integer "gl_account3_id"
    t.integer "gl_account4_id"
    t.varchar "password", limit: 20
    t.varchar "login_code", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "alternate_email_id", limit: 100
    t.varchar "customer_type", limit: 1
    t.varchar "web_access_flag", limit: 1
    t.varchar "gender", limit: 25
    t.varchar "title", limit: 25
    t.varchar "suffix", limit: 25
    t.varchar "birth_date", limit: 6
    t.varchar "account_type", limit: 25
    t.varchar "paper_proof_flag", limit: 1
    t.varchar "asi_number", limit: 50
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "class_name", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "other", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "payment_gateway_code", limit: 50
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_category_code", limit: 25
    t.varchar "billto_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "internal_code", limit: 25
    t.varchar "image_name", limit: 100
    t.varchar "free_shipping_flag", limit: 1
    t.varchar "third_party_shipping_flag", limit: 1
    t.varchar "third_party_account_number", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "consignment_flag", limit: 1
    t.varchar "email_cc", limit: 300
    t.varchar "authorization_required", limit: 1
    t.integer "three_year_rating"
    t.integer "one_year_rating"
    t.varchar "logo_image", limit: 100
    t.varchar "promo_image", limit: 100
    t.varchar "salesperson_auto_update", limit: 1
    t.varchar "credit_score", limit: 25
    t.varchar "insurance_flag", limit: 1
    t.varchar "alias_code", limit: 25
    t.varchar "portal_user_creation", limit: 1
    t.integer "avg_paying_days"
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.char "prevent_parent_pricing", limit: 1
    t.char "club_shipments_flag", limit: 1
    t.varchar "internal_salesperson_auto_update", limit: 1
    t.varchar "artwork_ftp_username", limit: 25
    t.varchar "artwork_ftp_password", limit: 25
    t.varchar "artwork_ftp_encryption_type", limit: 50
    t.char "cy_paypattern", limit: 12
    t.char "py_paypattern", limit: 12
    t.char "py2_paypattern", limit: 12
    t.varchar "aim_map_id", limit: 15
    t.varchar "buying_group_id", limit: 25
    t.varchar "domain", limit: 500
    t.char "attach_product_picture", limit: 1
    t.char "upic", limit: 25
    t.varchar "four51_duns_no", limit: 50
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
    t.decimal "overdue_interest_rate", precision: 5, scale: 2
    t.char "interest_on_overdue_invoices", limit: 1
    t.char "vip_flag", limit: 1
    t.varchar "exclude_from_asi", limit: 1
    t.varchar "stop_parent_order", limit: 1
    t.char "consolidate_emails_flag", limit: 1
    t.decimal "current_year_sales", precision: 16, scale: 2
    t.decimal "previous_year_sales", precision: 16, scale: 2
    t.decimal "two_year_ago_sales", precision: 16, scale: 2
    t.decimal "total_sales", precision: 16, scale: 2
    t.varchar "pricing_group", limit: 10
    t.varchar "print_reorder_slip", limit: 1
    t.varchar "nationalsalesperson_code", limit: 25
    t.varchar "strategicsalesperson_code", limit: 25
  end

  create_table "customers_update_salesperson_2022", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 100
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "phone2", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "cell_no", limit: 15
    t.varchar "email", limit: 200
    t.integer "customer_category_id"
    t.integer "tax_id"
    t.decimal "discount_per", precision: 5, scale: 2
    t.decimal "discount_days", precision: 5
    t.decimal "due_days", precision: 5
    t.varchar "inv_type", limit: 4
    t.text_basic "notes_text"
    t.varchar "territory", limit: 25
    t.varchar "territory2", limit: 10
    t.varchar "territory3", limit: 10
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1
    t.varchar "salesperson_code", limit: 25
    t.varchar "message_id", limit: 8
    t.varchar "inv_print_no", limit: 8
    t.varchar "shipping_code", limit: 255
    t.varchar "website", limit: 150
    t.varchar "email_yn", limit: 1
    t.varchar "fax_yn", limit: 1
    t.varchar "print_yn", limit: 1
    t.varchar "message_yn", limit: 1
    t.varchar "paymentpriority", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ein_no", limit: 20
    t.datetime "valid_dt", precision: nil
    t.varchar "udf1", limit: 100
    t.varchar "udf2", limit: 100
    t.varchar "udf3", limit: 100
    t.varchar "udf4", limit: 100
    t.varchar "udf5", limit: 100
    t.varchar "udf6", limit: 100
    t.varchar "dunning_yn", limit: 1
    t.decimal "salescomm_per", precision: 5, scale: 2
    t.decimal "coop_per", precision: 5, scale: 2
    t.integer "billto_id"
    t.decimal "base_goldprice", precision: 12, scale: 5
    t.varchar "memo_term_code", limit: 25
    t.varchar "invoice_term_code", limit: 25
    t.varchar "stop_ship", limit: 1, null: false
    t.varchar "jbt_ranking", limit: 10
    t.varchar "credit_approval_flag", limit: 1
    t.varchar "blacklisted_flag", limit: 1
    t.varchar "bank_account_no", limit: 30
    t.varchar "wfca_flag", limit: 1
    t.varchar "passport_no", limit: 30
    t.varchar "guarantee_name", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "contact2", limit: 50
    t.varchar "contact3", limit: 50
    t.varchar "contact4", limit: 50
    t.varchar "contact1_phone", limit: 15
    t.varchar "contact2_phone", limit: 15
    t.varchar "inactive", limit: 1
    t.varchar "bank_name", limit: 50
    t.varchar "bank_address1", limit: 50
    t.varchar "bank_address2", limit: 50
    t.varchar "bank_phone", limit: 50
    t.varchar "bank_fax", limit: 50
    t.varchar "bank_contact_person", limit: 50
    t.varchar "so_partial_ship_flag", limit: 1
    t.varchar "so_item_partial_ship_flag", limit: 1
    t.varchar "collection", limit: 1
    t.decimal "impairment_percent", precision: 6, scale: 2
    t.varchar "style_suffix", limit: 2
    t.varchar "location_code", limit: 25
    t.varchar "type1", limit: 4
    t.varchar "type2", limit: 4
    t.decimal "postdated_checks", precision: 4
    t.decimal "return_checks", precision: 4
    t.integer "gl_account1_id"
    t.integer "gl_account2_id"
    t.integer "gl_account3_id"
    t.integer "gl_account4_id"
    t.varchar "password", limit: 20
    t.varchar "login_code", limit: 100
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "alternate_email_id", limit: 100
    t.varchar "customer_type", limit: 1
    t.varchar "web_access_flag", limit: 1
    t.varchar "gender", limit: 25
    t.varchar "title", limit: 25
    t.varchar "suffix", limit: 25
    t.varchar "birth_date", limit: 6
    t.varchar "account_type", limit: 25
    t.varchar "paper_proof_flag", limit: 1
    t.varchar "asi_number", limit: 50
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "class_name", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "other", limit: 25
    t.varchar "affiliation", limit: 25
    t.varchar "organisation", limit: 25
    t.varchar "payment_gateway_code", limit: 50
    t.varchar "customer_profile_code", limit: 50
    t.varchar "customer_category_code", limit: 25
    t.varchar "billto_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "internal_code", limit: 25
    t.varchar "image_name", limit: 100
    t.varchar "free_shipping_flag", limit: 1
    t.varchar "third_party_shipping_flag", limit: 1
    t.varchar "third_party_account_number", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "consignment_flag", limit: 1
    t.varchar "email_cc", limit: 300
    t.varchar "authorization_required", limit: 1
    t.integer "three_year_rating"
    t.integer "one_year_rating"
    t.varchar "logo_image", limit: 100
    t.varchar "promo_image", limit: 100
    t.varchar "salesperson_auto_update", limit: 1
    t.varchar "credit_score", limit: 25
    t.varchar "insurance_flag", limit: 1
    t.varchar "alias_code", limit: 25
    t.varchar "portal_user_creation", limit: 1
    t.integer "avg_paying_days"
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.char "prevent_parent_pricing", limit: 1
    t.char "club_shipments_flag", limit: 1
    t.varchar "internal_salesperson_auto_update", limit: 1
    t.varchar "artwork_ftp_username", limit: 25
    t.varchar "artwork_ftp_password", limit: 25
    t.varchar "artwork_ftp_encryption_type", limit: 50
    t.char "cy_paypattern", limit: 12
    t.char "py_paypattern", limit: 12
    t.char "py2_paypattern", limit: 12
    t.varchar "aim_map_id", limit: 15
    t.varchar "buying_group_id", limit: 25
    t.varchar "domain", limit: 500
    t.char "attach_product_picture", limit: 1
    t.char "upic", limit: 25
    t.varchar "four51_duns_no", limit: 50
    t.varchar "facebook_link", limit: 200
    t.varchar "instagram_link", limit: 200
    t.varchar "linkedin_link", limit: 200
    t.varchar "tiktoc_link", limit: 200
    t.varchar "commonsku_link", limit: 200
    t.decimal "overdue_interest_rate", precision: 5, scale: 2
    t.char "interest_on_overdue_invoices", limit: 1
    t.char "vip_flag", limit: 1
  end

  create_table "customers_v3", id: false, force: :cascade do |t|
    t.string "Customer #", limit: 255
    t.string "Customer Name", limit: 255
    t.string "Inside Sales Rep#", limit: 255
    t.string "Outside Sales Rep#", limit: 255
  end

  create_table "daily_production_capacities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1
    t.varchar "update_flag", limit: 1
    t.integer "lock_version"
    t.datetime "capacity_date", precision: nil
    t.varchar "imprinttype", limit: 25
    t.integer "production_capacity"
    t.integer "booked_capacity"
    t.integer "available_capacity"
    t.integer "donot_ship_qty", default: 0
    t.integer "packaged_qty", default: 0
    t.integer "prior_day_shipped_qty", default: 0
  end

  create_table "dataupload_completes", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "request_date", precision: nil
    t.varchar "request_email_id", limit: 100, null: false
    t.varchar "request_file_name", limit: 250
    t.varchar "server_file_path", limit: 200, null: false
    t.varchar "request_status", limit: 1, default: "N"
    t.varchar "response1_flag", limit: 1, default: "N"
    t.varchar "response2_flag", limit: 1, default: "N"
    t.varchar "overwrite_flag", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
  end

  create_table "dataupload_requests", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "request_date", precision: nil
    t.varchar "request_email_id", limit: 100, null: false
    t.varchar "request_file_name", limit: 100, null: false
    t.varchar "server_file_path", limit: 200, null: false
    t.varchar "request_status", limit: 1, default: "N"
    t.varchar "response1_flag", limit: 1, default: "N"
    t.varchar "response2_flag", limit: 1, default: "N"
    t.varchar "overwrite_flag", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
  end

  create_table "diamond_lots", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "lot_number", limit: 25
    t.varchar "description", limit: 50
    t.varchar "stone_type", limit: 18
    t.varchar "shape", limit: 18
    t.varchar "color", limit: 18
    t.varchar "clarity", limit: 18
    t.varchar "quality", limit: 18
    t.varchar "setting", limit: 18
    t.decimal "ct_average", precision: 10, scale: 3
    t.decimal "ct_from", precision: 10, scale: 3
    t.decimal "ct_to", precision: 10, scale: 3
    t.varchar "size", limit: 25
    t.varchar "size_from", limit: 25
    t.varchar "size_to", limit: 25
    t.decimal "sieve_plate_from", precision: 7, scale: 2
    t.decimal "sieve_plate_to", precision: 7, scale: 2
    t.varchar "location", limit: 25
    t.varchar "cert_flag", limit: 1
    t.varchar "cost_unit", limit: 4
    t.decimal "cost_per_pcs", precision: 10, scale: 2
    t.decimal "cost_per_ct", precision: 10, scale: 2
    t.decimal "price_per_pcs", precision: 10, scale: 2
    t.decimal "price_per_ct", precision: 10, scale: 2
    t.integer "diamond_category_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "diamond_category_code", limit: 25
    t.varchar "cut", limit: 25
    t.varchar "shade", limit: 25
  end

  create_table "diamond_purchase_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "ref_type", limit: 1
    t.integer "diamond_lot_id"
    t.integer "diamond_packet_id"
    t.integer "diamond_purchase_id"
    t.varchar "location_code", limit: 25
    t.varchar "stone_type", limit: 18
    t.varchar "shape", limit: 18
    t.varchar "color", limit: 18
    t.varchar "clarity", limit: 18
    t.varchar "quality", limit: 18
    t.decimal "commission_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "size", precision: 6, scale: 2
    t.decimal "pcs", precision: 10, scale: 2
    t.decimal "ref_pcs", precision: 10, scale: 2
    t.decimal "clear_pcs", precision: 10, scale: 2
    t.decimal "wt", precision: 12, scale: 3
    t.decimal "ref_wt", precision: 12, scale: 3
    t.decimal "clear_wt", precision: 12, scale: 3
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "line_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.decimal "cost", precision: 10, scale: 2
    t.varchar "sell_unit", limit: 4
    t.varchar "type", limit: 50
    t.varchar "account_period_code", limit: 8
    t.varchar "diamond_lot_number", limit: 25
    t.varchar "diamond_packet_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "location_id"
    t.varchar "diamond_lot_description", limit: 2000
    t.varchar "remarks", limit: 255
    t.varchar "wb_bk", limit: 4
    t.varchar "wb_no", limit: 18
    t.datetime "wb_date", precision: nil
    t.varchar "wb_type", limit: 1
    t.decimal "wb_approx_value", precision: 12, scale: 2
    t.varchar "cut", limit: 25
    t.varchar "shade", limit: 25
    t.datetime "estimated_ship_date", precision: nil
  end

  create_table "diamond_purchases", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "vendor_id"
    t.integer "company_store_id"
    t.varchar "account_period_code", limit: 8
    t.varchar "shipping_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "trans_type", limit: 1
    t.varchar "post_flag", limit: 1
    t.varchar "ref_type", limit: 1
    t.decimal "ship_per", precision: 6, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 2
    t.decimal "tax_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "lines_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "commission_per", precision: 6, scale: 2
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "po_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "bill_name", limit: 50
    t.datetime "ref_trans_dt", precision: nil
    t.datetime "po_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.decimal "total_pcs", precision: 12, scale: 2
    t.decimal "total_wt", precision: 12, scale: 3
    t.varchar "type", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "company_store_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "wb_issue_flag", limit: 1
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "diamond_sale_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "ref_type", limit: 1
    t.integer "diamond_lot_id"
    t.integer "diamond_packet_id"
    t.integer "diamond_sale_id"
    t.varchar "location_code", limit: 25
    t.varchar "stone_type", limit: 18
    t.varchar "shape", limit: 18
    t.varchar "color", limit: 18
    t.varchar "clarity", limit: 18
    t.varchar "quality", limit: 18
    t.decimal "commission_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "size", precision: 6, scale: 2
    t.decimal "pcs", precision: 10, scale: 2
    t.decimal "ref_pcs", precision: 10, scale: 2
    t.decimal "clear_pcs", precision: 10, scale: 2
    t.decimal "wt", precision: 12, scale: 3
    t.decimal "ref_wt", precision: 12, scale: 3
    t.decimal "clear_wt", precision: 12, scale: 3
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "line_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.decimal "cost", precision: 10, scale: 2
    t.varchar "sell_unit", limit: 4
    t.varchar "type", limit: 50
    t.varchar "account_period_code", limit: 8
    t.varchar "diamond_lot_number", limit: 25
    t.varchar "diamond_packet_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "location_id"
    t.varchar "cut", limit: 25
    t.varchar "shade", limit: 25
  end

  create_table "diamond_sales", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "customer_id"
    t.integer "customer_shipping_id"
    t.varchar "account_period_code", limit: 8
    t.varchar "shipping_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "trans_type", limit: 1
    t.varchar "post_flag", limit: 1
    t.varchar "ref_type", limit: 1
    t.decimal "ship_per", precision: 6, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 2
    t.decimal "tax_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "lines_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "commission_per", precision: 6, scale: 2
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "po_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "bill_name", limit: 50
    t.datetime "ref_trans_dt", precision: nil
    t.datetime "po_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.decimal "total_pcs", precision: 12, scale: 2
    t.decimal "total_wt", precision: 12, scale: 3
    t.varchar "type", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "discount_coupon_charges", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "discount_coupon_id", null: false
    t.varchar "discount_type", limit: 25
    t.decimal "original_rate", precision: 12, scale: 3, default: 0.0
    t.decimal "discounted_rate", precision: 12, scale: 3, default: 0.0
    t.decimal "discount_per", precision: 12, scale: 2, default: 0.0
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.index ["discount_coupon_id"], name: "idx_discount_coupon_id"
  end

  create_table "discount_coupon_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "discount_coupon_id", null: false
    t.integer "catalog_item_category_id"
    t.varchar "catalog_item_category_code", limit: 25
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25
    t.decimal "qty_from", precision: 12, scale: 3
    t.decimal "qty_to", precision: 12, scale: 3
    t.varchar "discount_type", limit: 50
    t.decimal "blank_price", precision: 12, scale: 3
    t.decimal "column1", precision: 12, scale: 3
    t.decimal "column2", precision: 12, scale: 3
    t.decimal "column3", precision: 12, scale: 3
    t.decimal "column4", precision: 12, scale: 3
    t.decimal "column5", precision: 12, scale: 3
    t.decimal "column6", precision: 12, scale: 3
    t.decimal "column7", precision: 12, scale: 3
    t.decimal "column8", precision: 12, scale: 3
    t.decimal "column9", precision: 12, scale: 3
    t.decimal "column10", precision: 12, scale: 3
    t.decimal "column11", precision: 12, scale: 3
    t.decimal "column12", precision: 12, scale: 3
    t.decimal "column13", precision: 12, scale: 3
    t.decimal "column14", precision: 12, scale: 3
    t.decimal "column15", precision: 12, scale: 3
  end

  create_table "discount_coupons", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "coupon_code", limit: 25
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.datetime "from_date", precision: nil, null: false
    t.datetime "to_date", precision: nil, null: false
    t.varchar "discount_type", limit: 50
    t.varchar "discount_reason", limit: 500
    t.integer "no_of_uses"
    t.varchar "approval_flag", limit: 1, default: "N"
    t.decimal "column1", precision: 12, scale: 3, default: 0.0
    t.decimal "column2", precision: 12, scale: 3, default: 0.0
    t.decimal "column3", precision: 12, scale: 3, default: 0.0
    t.decimal "column4", precision: 12, scale: 3, default: 0.0
    t.decimal "column5", precision: 12, scale: 3, default: 0.0
    t.decimal "column6", precision: 12, scale: 3, default: 0.0
    t.decimal "column7", precision: 12, scale: 3, default: 0.0
    t.decimal "column8", precision: 12, scale: 3, default: 0.0
    t.decimal "column9", precision: 12, scale: 3, default: 0.0
    t.decimal "column10", precision: 12, scale: 3, default: 0.0
    t.decimal "column11", precision: 12, scale: 3, default: 0.0
    t.decimal "column12", precision: 12, scale: 3, default: 0.0
    t.decimal "column13", precision: 12, scale: 3, default: 0.0
    t.decimal "column14", precision: 12, scale: 3, default: 0.0
    t.decimal "column15", precision: 12, scale: 3, default: 0.0
    t.decimal "blank_price", precision: 12, scale: 3, default: 0.0
    t.integer "no_of_used", default: 0
    t.varchar "free_shipping_flag", limit: 1, default: "N"
    t.varchar "customer_email", limit: 500
    t.varchar "coupon_type", limit: 1
    t.index ["customer_id", "catalog_item_id"], name: "idx_discount_cpn_catalog_item_cust_id"
  end

  create_table "documents", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "document_name", limit: 100
    t.varchar "component_cd", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.varchar "document_type", limit: 2
    t.varchar_max "printer_name"
    t.varchar "server_path", limit: 300
    t.varchar "show_notes_popup_value", limit: 500
    t.index ["code"], name: "idx_documents_code", unique: true
  end

  create_table "email_config_variables", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "email_config_id", null: false
    t.varchar "user_variable", limit: 100
    t.varchar_max "variable_table_name"
    t.varchar_max "variable_field_name"
    t.varchar "query", limit: 1000
  end

  create_table "email_configs", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "event_type", limit: 4, default: "AUTO"
    t.varchar "trigger_event", limit: 50, null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "signature_text", limit: 300
    t.varchar "signature_image", limit: 100
    t.varchar_max "body"
    t.varchar "email_type", limit: 10
    t.varchar "header_image", limit: 100
    t.varchar "remarks", limit: 1000
    t.char "send_via_rep", limit: 1, default: "N"
    t.index ["trigger_event"], name: "idx_email_configs_trigger_event", unique: true
  end

  create_table "email_configs_bak20230601", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "event_type", limit: 4
    t.varchar "trigger_event", limit: 50, null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "signature_text", limit: 300
    t.varchar "signature_image", limit: 100
    t.varchar_max "body"
    t.varchar "email_type", limit: 10
    t.varchar "header_image", limit: 100
    t.varchar "remarks", limit: 1000
    t.char "send_via_rep", limit: 1
  end

  create_table "email_delete", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "email_config_id", null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "header", limit: 255
    t.text_basic "body"
    t.datetime "sent_on", precision: nil
    t.integer "attempts"
    t.varchar "file_name_path", limit: 500
    t.varchar "updated_by_code", limit: 25
    t.varchar "attachment_file", limit: 500
  end

  create_table "email_sends", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "email_config_id", null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "header", limit: 255
    t.text_basic "body"
    t.datetime "sent_on", precision: nil
    t.integer "attempts"
    t.varchar "updated_by_code", limit: 25
    t.varchar "file_name_path", limit: 500
    t.varchar "attachment_file", limit: 500
    t.integer "ref_company_id"
    t.char "ref_type", limit: 1
    t.char "ref_bk", limit: 4
    t.char "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.char "email_received", limit: 1, default: "N"
    t.datetime "received_at", precision: nil
    t.char "source_app", limit: 10, default: "          "
  end

  create_table "emails", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "email_config_id", null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "header", limit: 255
    t.text_basic "body"
    t.datetime "sent_on", precision: nil
    t.integer "attempts"
    t.varchar "file_name_path", limit: 500
    t.varchar "updated_by_code", limit: 25
    t.varchar "attachment_file", limit: 500
    t.varchar_max "error"
    t.varchar "content_type", limit: 50
    t.integer "ref_company_id"
    t.char "ref_type", limit: 1
    t.char "ref_bk", limit: 4
    t.char "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.char "source_app", limit: 10, default: "          "
  end

  create_table "emails_not_sent", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "email_config_id", null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "header", limit: 255
    t.text_basic "body"
    t.datetime "sent_on", precision: nil
    t.integer "attempts"
    t.varchar "file_name_path", limit: 500
    t.varchar "updated_by_code", limit: 25
    t.varchar "attachment_file", limit: 500
  end

  create_table "emails_references", id: :integer, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "created_by"
    t.integer "updated_by"
    t.integer "lock_version", default: 0
    t.char "trans_flag", limit: 1, default: "A"
    t.char "update_flag", limit: 1, default: "V"
    t.char "sent_receive", limit: 1
    t.integer "email_id"
    t.varchar "message_id", limit: 1
    t.integer "sequence"
  end

  create_table "export_csv_to_ftp", id: false, force: :cascade do |t|
    t.varchar "ftp_type", limit: 50
    t.varchar "ftp_name", limit: 18, null: false
    t.varchar "ftp_url", limit: 100
    t.integer "ftp_port"
    t.varchar "ftp_user", limit: 40
    t.varchar "ftp_password", limit: 40
    t.varchar "ftp_certificate_no", limit: 255
    t.varchar "operation", limit: 18
    t.varchar "smtp_name", limit: 50
    t.integer "smtp_port"
    t.varchar "smtp_user", limit: 25
    t.varchar "smtp_password", limit: 25
    t.varchar "smtp_authentication", limit: 50
    t.char "smtp_enable_ssl", limit: 1
    t.varchar "email_format", limit: 4
    t.varchar "email_to_1", limit: 255
    t.varchar "email_to_2", limit: 255
    t.varchar "email_from", limit: 100
    t.varchar "email_cc_1", limit: 255
    t.varchar "email_cc_2", limit: 255
    t.varchar "email_subject", limit: 255
    t.text_basic "email_body"
    t.varchar "email_attachment_url", limit: 255
    t.varchar "local_path", limit: 255
    t.varchar "remote_path", limit: 255
    t.varchar "file_name", limit: 255
    t.varchar "file_prefix", limit: 255
    t.varchar "remote_file_extension", limit: 4
    t.varchar "local_file_extension", limit: 4
    t.varchar "storedprocedure_name", limit: 255
    t.char "user_cd", limit: 4
    t.char "trans_flag", limit: 1
    t.char "company_id", limit: 4
    t.char "update_flag", limit: 1
    t.datetime "update_dt", precision: nil
    t.varchar "batchfilefullpath", limit: 255
    t.varchar "backup_path", limit: 255
    t.varchar "backup_fileName", limit: 255
    t.varchar "backup_fileSuffix", limit: 255
    t.char "backup_flag", limit: 1
    t.varchar "templatefile", limit: 255
    t.varchar "backup_batch_fileName", limit: 255
    t.char "generate_file_flag", limit: 1
    t.varchar "file_suffix", limit: 50
  end

  create_table "facilis_bg", id: false, force: :cascade do |t|
    t.text "buying_id"
    t.integer "id", null: false
    t.text "buying_group_code"
  end

  create_table "four51_sales_order_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.char "updated_by_code", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "payloadID", limit: 100
    t.integer "four51_sales_order_id", null: false
    t.integer "lineNumber"
    t.integer "quantity"
    t.datetime "requestedDeliveryDate", precision: nil
    t.char "SupplierPartID", limit: 50
    t.char "SupplierPartAuxiliaryID", limit: 50
    t.decimal "UnitPrice", precision: 12, scale: 2
    t.varchar "Description", limit: 500
    t.char "UnitOfMeasure", limit: 25
    t.char "Classification", limit: 50
    t.varchar "URL", limit: 200
    t.varchar "lineItemID", limit: 200
    t.decimal "quantityMultiplier", precision: 12, scale: 2
    t.char "productType", limit: 25
    t.varchar "parentKitLineItemID", limit: 200
    t.integer "punchoutLineNumber"
    t.char "costCenter", limit: 25
    t.char "costCenterInteropID", limit: 25
    t.varchar "productInteropID", limit: 100
    t.varchar "variantInteropID", limit: 100
    t.char "ProductSpecsPhonePrefix1", limit: 25
    t.char "ProductSpecsName", limit: 50
    t.char "ProductSpecsPhone1NUM", limit: 15
    t.char "ProductSpecsTitle", limit: 50
    t.varchar "ProductSpecsimageUpload", limit: 200
    t.varchar "ProductSpecsfour51username", limit: 100
    t.varchar "ProductSpecsCustomerPrefix1", limit: 100
    t.char "ProductSpecsCustomerPrefix2", limit: 50
    t.char "ProductSpecsCustomerPhone2EXT", limit: 20
    t.varchar "ProductSpecsCustomerWebAddress", limit: 150
    t.varchar "ProductSpecsWebaddress", limit: 150
    t.char "ProductSpecsCustomerName", limit: 50
    t.char "ProductSpecsCustomerPhone1EXT", limit: 20
    t.char "ProductSpecsCustomerPhone1NUM", limit: 20
    t.char "ProductSpecsCustomerTitle", limit: 50
    t.char "ProductSpecsCustomerPhone3EXT", limit: 20
    t.char "customer_prefix3CustomerPrefix3", limit: 25
    t.varchar "ProductSpecsimage", limit: 200
    t.varchar "ProductSpecsCustomerEmail", limit: 100
    t.varchar "ProductSpecsCustomerPhone1AC", limit: 100
    t.varchar "ProductSpecsCustomerPhone2AC", limit: 100
    t.varchar "ProductSpecsCustomerPhone2NUM", limit: 100
    t.varchar "ProductSpecsCustomerPhone3AC", limit: 100
    t.varchar "ProductSpecsCustomerPhone3NUM", limit: 100
    t.varchar "shippingAddressInteropID", limit: 10
    t.char "taxCode", limit: 25
    t.decimal "taxableShippingAmount", precision: 12, scale: 2
    t.decimal "taxableItemAmount", precision: 12, scale: 2
    t.decimal "shipWeight", precision: 12, scale: 2
    t.char "requestedShipper", limit: 25
    t.char "requestedShippingAccount", limit: 10
    t.char "ShipToAddressName", limit: 50
    t.char "ShipToStreet1", limit: 50
    t.char "ShipToStreet2", limit: 50
    t.char "ShipToCity", limit: 20
    t.char "ShipToState", limit: 20
    t.char "ShipToPostalCode", limit: 10
    t.char "ShipToCountry", limit: 20
    t.char "ShipToPhoneCountryCode", limit: 10
    t.char "ShipToPhoneAreaOrCityCode", limit: 10
    t.char "ShipToPhoneNumber", limit: 20
    t.char "serial_no", limit: 5
    t.varchar "DeliverTo", limit: 50
    t.varchar "ProductSpecsArwork", limit: 200
    t.varchar "ProductSpecsProof", limit: 200
    t.varchar "ProductSpecsShipVia", limit: 200
  end

  create_table "four51_sales_order_payments", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.char "updated_by_code", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.char "payloadID", limit: 100
    t.integer "four51_sales_order_id", null: false
    t.integer "four51_supplier_request_id"
    t.char "payment_type", limit: 30
    t.char "payment_source_name", limit: 50
    t.decimal "payment_amount", precision: 12, scale: 2
    t.char "serial_no", limit: 5
  end

  create_table "four51_sales_orders", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.char "updated_by_code", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "payloadID", limit: 100
    t.char "version", limit: 20
    t.datetime "cXMLtimestamp", precision: nil
    t.char "FromDUNS", limit: 25
    t.char "FromCompanyName", limit: 50
    t.char "ToDUNS", limit: 25
    t.char "ToCompanyName", limit: 50
    t.char "SenderDUNS", limit: 25
    t.char "SenderSharedSecret", limit: 50
    t.char "SenderUserAgent", limit: 25
    t.char "deploymentMode", limit: 25
    t.char "orderID", limit: 10
    t.datetime "orderDate", precision: nil
    t.char "ordertype", limit: 10
    t.char "currency", limit: 10
    t.decimal "Total_Money", precision: 12, scale: 2
    t.varchar "addressID", limit: 200
    t.char "Name", limit: 50
    t.char "DeliverTo", limit: 50
    t.char "Street1", limit: 50
    t.char "Street2", limit: 50
    t.char "City", limit: 25
    t.char "State", limit: 10
    t.char "PostalCode", limit: 15
    t.char "Country", limit: 25
    t.varchar "Email", limit: 100
    t.char "CountryCode", limit: 10
    t.char "AreaOrCityCode", limit: 10
    t.char "Number", limit: 20
    t.decimal "Shipping_Money", precision: 12, scale: 2
    t.varchar "Shipping_Description", limit: 200
    t.decimal "Tax_Money", precision: 12, scale: 2
    t.varchar "Tax_Description", limit: 200
    t.char "Payment_PCardnumber", limit: 25
    t.datetime "Payment_PCardexpiration", precision: nil
    t.char "Payment_PCardname", limit: 50
    t.varchar "Comments", limit: 200
    t.char "four51UserName", limit: 50
    t.char "BuyerInteropID", limit: 25
    t.char "BillingAddressInteropID", limit: 10
    t.char "Four51UserInteropID", limit: 25
    t.char "Four51UserFirstName", limit: 25
    t.char "Four51UserLastName", limit: 25
    t.char "Four51UserPhone", limit: 25
    t.char "UniqueOrderFieldName1", limit: 50
    t.char "UniqueOrderFieldName2", limit: 50
    t.char "UniqueOrderFieldName3", limit: 50
    t.char "CouponCode", limit: 25
    t.char "Coupon_InteropID", limit: 25
    t.decimal "Coupon_DiscountAmount", precision: 12, scale: 2
    t.varchar "response", limit: 1000
    t.char "result", limit: 25
    t.char "move_to_sales_flag", limit: 1, default: "N"
    t.varchar "validation_message", limit: 1000
    t.string "request_xml"
  end

  create_table "four51_ship_notice_requests", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.char "updated_by_code", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sales_order_shipment_id"
    t.char "tracking_no", limit: 50
    t.char "four51_sales_order_orderID", limit: 50
    t.char "sales_order_trans_no", limit: 25
    t.varchar "payloadID", limit: 100
    t.string "request_xml"
    t.string "response_body"
    t.char "result", limit: 10
    t.varchar "response_code", limit: 500
    t.varchar "response_text", limit: 500
  end

  create_table "gl_accounts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "group1", limit: 100
    t.varchar "group2", limit: 100
    t.varchar "group3", limit: 100
    t.varchar "group4", limit: 100
    t.varchar "name", limit: 50
    t.varchar "balance_type", limit: 2
    t.integer "gl_category_id"
    t.integer "bank_id"
    t.datetime "start_date", precision: nil
    t.varchar "acct_flag", limit: 1
    t.integer "tb_seq_no"
    t.varchar "gl_category_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_gl_accounts_code"
  end

  create_table "gl_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "name", limit: 50
    t.varchar "account_type", limit: 2
    t.integer "tb_seq_no"
    t.varchar "updated_by_code", limit: 25
    t.varchar "balance_type", limit: 2
    t.index ["code"], name: "idx_gl_categories_code"
  end

  create_table "gl_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "dtl_serial_no", limit: 6
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "description", limit: 50
    t.varchar "trans_type", limit: 4
    t.varchar "ref_no", limit: 50
    t.varchar "post_flag", limit: 1
    t.integer "customer_vendor_id"
    t.varchar "hdr_serial_no", limit: 6
    t.varchar "module_code", limit: 6
    t.varchar "customer_vendor_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.index ["account_period_code"], name: "ix_gl_details_account_period_code"
    t.index ["company_id", "account_period_code", "gl_account_id", "trans_bk", "trans_no", "trans_date"], name: "idx_gl_details_trans_no"
  end

  create_table "gl_setup_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "gl_setup_id", null: false
    t.varchar "item_type", limit: 1, null: false
    t.integer "sales_account_id", null: false
    t.integer "purchase_account_id", null: false
    t.varchar "purchase_account_code", limit: 25
    t.varchar "sales_account_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "inventory_account_id"
    t.varchar "inventory_account_code", limit: 25
  end

  create_table "gl_setups", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "ar_account_id", null: false
    t.integer "ap_account_id", null: false
    t.integer "shipping_purchase_account_id", null: false
    t.integer "shipping_sales_account_id", null: false
    t.integer "discount_purchase_account_id", null: false
    t.integer "discount_sales_account_id", null: false
    t.integer "salestax_purchase_account_id", null: false
    t.integer "salestax_sales_account_id", null: false
    t.integer "default_purchase_account_id", null: false
    t.integer "default_sales_account_id", null: false
    t.integer "insurance_purchase_account_id"
    t.integer "insurance_sales_account_id"
    t.integer "faar_invoice_gl_account_id"
    t.integer "faar_bank_id"
    t.integer "faar_credit_gl_account_id"
    t.integer "faap_credit_gl_account_id"
    t.integer "faap_bank_id"
    t.varchar "ar_account_code", limit: 25
    t.varchar "ap_account_code", limit: 25
    t.varchar "shipping_purchase_account_code", limit: 25
    t.varchar "shipping_sales_account_code", limit: 25
    t.varchar "discount_purchase_account_code", limit: 25
    t.varchar "discount_sales_account_code", limit: 25
    t.varchar "salestax_purchase_account_code", limit: 25
    t.varchar "salestax_sales_account_code", limit: 25
    t.varchar "default_purchase_account_code", limit: 25
    t.varchar "default_sales_account_code", limit: 25
    t.varchar "faar_invoice_gl_account_code", limit: 25
    t.varchar "faar_bank_code", limit: 25
    t.varchar "faar_credit_gl_account_code", limit: 25
    t.varchar "faap_credit_gl_account_code", limit: 25
    t.varchar "faap_bank_code", limit: 25
    t.varchar "other_sales_account_code", limit: 25
    t.varchar "other_purchase_account_code", limit: 25
    t.varchar "insurance_purchase_account_code", limit: 25
    t.varchar "insurance_sales_account_code", limit: 25
    t.varchar "gl_account_code", limit: 25
    t.integer "other_sales_account_id"
    t.integer "other_purchase_account_id"
    t.varchar "updated_by_code", limit: 25
    t.integer "bank_charge_account_id"
    t.varchar "bank_charge_account_code", limit: 25
    t.integer "default_pos_account_id"
    t.varchar "default_pos_account_code", limit: 25
    t.integer "default_cash_account_id"
    t.varchar "default_cash_account_code", limit: 25
    t.integer "default_check_account_id"
    t.varchar "default_check_account_code", limit: 25
    t.integer "default_credit_card_account_id"
    t.varchar "default_credit_card_accoun_code", limit: 25
    t.integer "default_debit_card_account_id"
    t.varchar "default_debit_card_account_code", limit: 25
    t.integer "default_gift_card_account_id"
    t.varchar "default_gift_card_account_code", limit: 25
    t.integer "default_gift_certificate_account_id"
    t.varchar "default_gift_certificate_account_code", limit: 25
    t.integer "default_store_credit_account_id"
    t.varchar "default_store_credit_account_code", limit: 25
    t.varchar "default_credit_card_account_code", limit: 25
    t.integer "faar_credit_card_bank_id"
    t.varchar "faar_credit_card_bank_code", limit: 25
    t.integer "faap_credit_card_bank_id"
    t.varchar "faap_credit_card_bank_code", limit: 25
    t.integer "labor_account_id"
    t.varchar "labor_account_code", limit: 25
    t.integer "deposit_bank_id"
    t.varchar "deposit_bank_code", limit: 25
    t.integer "payment_bank_id"
    t.varchar "payment_bank_code", limit: 25
    t.integer "credit_card_charge_account_id"
    t.varchar "credit_card_charge_account_code", limit: 25
    t.integer "duty_purchase_account_id"
    t.varchar "duty_purchase_account_code", limit: 25
    t.integer "duty_sales_account_id"
    t.varchar "duty_sales_account_code", limit: 25
    t.varchar "retained_account_code", limit: 25
    t.integer "retained_account_id"
    t.integer "faap_discount_gl_account_id"
    t.varchar "faap_discount_gl_account_code", limit: 25
    t.integer "faar_discount_gl_account_id"
    t.varchar "faar_discount_gl_account_code", limit: 25
    t.integer "memo_purchase_account_id"
    t.varchar "memo_purchase_account_code", limit: 25
    t.integer "memo_payable_account_id"
    t.varchar "memo_payable_account_code", limit: 25
    t.integer "cogs_account_id"
    t.varchar "cogs_account_code", limit: 25
    t.integer "faar_chargeback_account_id"
    t.varchar "faar_chargeback_account_code", limit: 25
    t.integer "faap_chargeback_account_id"
    t.varchar "faap_chargeback_account_code", limit: 25
    t.integer "cc_inbox_bank_account_id"
    t.varchar "cc_inbox_bank_account_code", limit: 25
  end

  create_table "gl_summaries", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "account_period_code", limit: 8
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
    t.index ["company_id", "account_period_code", "gl_account_id"], name: "idx_gl_summaries"
  end

  create_table "gl_summaries_bak20230103", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "account_period_code", limit: 8
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
  end

  create_table "gl_summaries_bak20230929", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "account_period_code", limit: 8
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
  end

  create_table "gl_summaries_bak_20230822", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "account_period_code", limit: 8
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
  end

  create_table "gl_summaries_bak_20231003", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "account_period_code", limit: 8
    t.integer "gl_account_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
  end

  create_table "gl_transaction_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.integer "gl_account_id"
    t.integer "gl_transaction_id"
    t.decimal "debit_amt", precision: 12, scale: 2
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "description", limit: 50
    t.varchar "post_flag", limit: 1
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["gl_transaction_id"], name: "idx_gl_transaction_lines_gl_transaction_id"
  end

  create_table "gl_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "trans_type", limit: 4
    t.varchar "post_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "idx_gl_transaction_trans_no"
  end

  create_table "holidays", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "holiday_date", precision: nil
    t.varchar "event", limit: 50
    t.index ["holiday_date"], name: "idx_holidays_holiday_date"
  end

  create_table "imprint_type_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "imprint_type_id"
    t.datetime "activity_date", precision: nil
    t.string "activity_stage_code", limit: 200
    t.integer "user_id"
  end

  create_table "imprint_type_blocked_dates", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "imprint_type_id"
    t.datetime "blocked_date", precision: nil
  end

  create_table "imprint_type_codes", id: false, force: :cascade do |t|
    t.string "imprint_type_code", limit: 50, null: false
    t.string "imprint_type_name", limit: 50
  end

  create_table "imprint_types", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.integer "production_capacity"
    t.varchar "updated_by_code", limit: 25
    t.varchar "api_posting_flag", limit: 1, default: "N"
  end

  create_table "indigo_impositions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 6
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "imposition_file_name", limit: 250
    t.varchar "imposition_file_type", limit: 50
    t.varchar "comments", limit: 100
    t.varchar "print_ready_flag", limit: 1, default: "N"
    t.varchar "indigo_code", limit: 25
    t.varchar "doc_code", limit: 25
    t.index ["indigo_code"], name: "idx_indigo_imp_indigo_code_trans_no"
  end

  create_table "indigo_printer_users", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id"
    t.varchar "user_cd", limit: 25
    t.varchar "indigo_file_type", limit: 25
    t.varchar "hot_folder", limit: 500
  end

  create_table "inside_and_outside_rep", id: false, force: :cascade do |t|
    t.string "Cust Category #", limit: 255
    t.string "Buying Group #", limit: 255
    t.string "Customer #", limit: 255
    t.string "Parent #", limit: 255
    t.string "Customer Name", limit: 255
    t.string "Inside Sales Rep#", limit: 255
    t.string "Outside Sales Rep#", limit: 255
    t.string "Address #1", limit: 255
    t.string "Address #2", limit: 255
    t.string "City", limit: 255
    t.string "State", limit: 255
    t.float "Zip"
    t.string "Country", limit: 255
  end

  create_table "instant_emails", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "email_config_id", null: false
    t.varchar "subject", limit: 100
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "email_from", limit: 50
    t.varchar "header", limit: 255
    t.text_basic "body"
    t.datetime "sent_on", precision: nil
    t.integer "attempts"
    t.varchar "file_name_path", limit: 500
    t.varchar "updated_by_code", limit: 25
    t.varchar "attachment_file", limit: 500
    t.varchar_max "error"
    t.varchar "content_type", limit: 50
    t.integer "ref_company_id"
    t.char "ref_type", limit: 1
    t.char "ref_bk", limit: 4
    t.char "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.char "source_app", limit: 10, default: "          "
    t.varchar "result", limit: 500
  end

  create_table "inventory_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.integer "catalog_item_id", null: false
    t.decimal "stock_rec_qty", precision: 12, scale: 4
    t.decimal "stock_iss_qty", precision: 12, scale: 4
    t.decimal "memo_rec_qty", precision: 10, scale: 4
    t.decimal "memo_iss_qty", precision: 10, scale: 4
    t.decimal "stock_rec_price", precision: 12, scale: 3
    t.decimal "stock_iss_price", precision: 12, scale: 3
    t.decimal "memo_rec_price", precision: 12, scale: 3
    t.decimal "memo_iss_price", precision: 12, scale: 3
    t.decimal "stock_rec_amt", precision: 12, scale: 2
    t.decimal "stock_iss_amt", precision: 12, scale: 2
    t.decimal "memo_rec_amt", precision: 12, scale: 2
    t.decimal "memo_iss_amt", precision: 12, scale: 2
    t.varchar "account_period_code", limit: 8
    t.integer "catalog_item_packet_id"
    t.varchar "trans_type", limit: 1
    t.integer "trans_type_id"
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.varchar "receipt_issue_flag", limit: 1
    t.integer "catalog_item_batch_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "expiry_date", precision: nil
    t.index ["company_id", "catalog_item_id"], name: "inventory_details_company_id_catalog_item_id"
  end

  create_table "inventory_stage_summaries", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "stage_code", limit: 25
    t.decimal "stage_qty", precision: 10, scale: 4
    t.decimal "clear_qty", precision: 10, scale: 4
    t.integer "transaction_bom_id"
    t.varchar "transaction_bom_types", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
  end

  create_table "inventory_summaries", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "catalog_item_id", null: false
    t.decimal "stock_rec_qty", precision: 16, scale: 4
    t.decimal "stock_iss_qty", precision: 16, scale: 4
    t.decimal "memo_rec_qty", precision: 16, scale: 4
    t.decimal "memo_iss_qty", precision: 16, scale: 4
    t.decimal "stock_rec_amt", precision: 12, scale: 2
    t.decimal "stock_iss_amt", precision: 12, scale: 2
    t.decimal "memo_rec_amt", precision: 12, scale: 2
    t.decimal "memo_iss_amt", precision: 12, scale: 2
    t.varchar "account_period_code", limit: 8
    t.integer "catalog_item_packet_id"
    t.integer "catalog_item_batch_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "expiry_date", precision: nil
    t.index ["catalog_item_id", "location_id"], name: "idx_inv_summaries_cat_item_id_location_id"
    t.index ["company_id", "catalog_item_id"], name: "inventory_summaries_company_id_catalog_item_id"
  end

  create_table "inventory_summaries_20230925", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_item_id", null: false
    t.decimal "stock_rec_qty", precision: 16, scale: 4
    t.decimal "stock_iss_qty", precision: 16, scale: 4
    t.decimal "memo_rec_qty", precision: 16, scale: 4
    t.decimal "memo_iss_qty", precision: 16, scale: 4
    t.decimal "stock_rec_amt", precision: 12, scale: 2
    t.decimal "stock_iss_amt", precision: 12, scale: 2
    t.decimal "memo_rec_amt", precision: 12, scale: 2
    t.decimal "memo_iss_amt", precision: 12, scale: 2
    t.varchar "account_period_code", limit: 8
    t.integer "catalog_item_packet_id"
    t.integer "catalog_item_batch_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "expiry_date", precision: nil
  end

  create_table "inventory_transaction_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "account_period_code", limit: 8
    t.varchar "receipt_issue_flag", limit: 1
    t.varchar "item_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.decimal "rec_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "iss_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "rec_price", precision: 12, scale: 2, default: 0.0
    t.decimal "rec_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "iss_price", precision: 12, scale: 2, default: 0.0
    t.decimal "iss_amt", precision: 12, scale: 2, default: 0.0
    t.integer "inventory_transaction_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "item_description", limit: 1000
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "expiry_date", precision: nil
    t.index ["inventory_transaction_id"], name: "idx_inventory_transaction_lines_inventory_transaction_id"
  end

  create_table "inventory_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "receipt_issue_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.integer "trans_type_id"
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.varchar "remarks", limit: 50
    t.varchar "trans_type_code", limit: 25
    t.varchar "prefered_vendor_code", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "inventory_transfers", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.datetime "transfer_date", precision: nil
    t.integer "store_id_from", null: false
    t.integer "store_id_to", null: false
    t.varchar "issued_trans_bk", limit: 4
    t.varchar "received_trans_bk", limit: 4
    t.varchar "issued_trans_no", limit: 18
    t.varchar "received_trans_no", limit: 18
    t.datetime "issued_trans_date", precision: nil
    t.datetime "received_trans_date", precision: nil
    t.varchar "issued_serial_no", limit: 6
    t.varchar "received_serial_no", limit: 6
    t.varchar "account_period_code", limit: 8
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.decimal "transfer_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "transfer_price", precision: 12, scale: 2, default: 0.0
    t.decimal "transfer_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "status", limit: 1, default: "T"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "item_description", limit: 100
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "expiry_date", precision: nil
  end

  create_table "items", id: :integer, force: :cascade do |t|
    t.varchar "item_code", limit: 25
    t.varchar "item_name", limit: 200
    t.varchar "image_name", limit: 500
    t.varchar "metal_type", limit: 200
    t.varchar "stone_type", limit: 200
  end

  create_table "layouts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
  end

  create_table "lead_notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "crm_lead_id"
    t.varchar "user_cd", limit: 250
    t.datetime "note_date", precision: nil
    t.varchar "note", limit: 1000
    t.varchar "serial_no", limit: 6
    t.varchar "updated_by_code", limit: 25
  end

  create_table "locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "description", limit: 500
    t.varchar "country", limit: 20
    t.varchar "cell_no", limit: 15
    t.varchar "contact_nm", limit: 50
    t.varchar "email_to", limit: 200
    t.varchar "default_yn", limit: 1, default: "Y"
    t.varchar "location_type", limit: 1
    t.datetime "expiry_date", precision: nil
    t.integer "pallet_capacity"
    t.varchar "barcode", limit: 25
    t.integer "warehouse_id"
    t.varchar "section", limit: 25
    t.varchar "aisle", limit: 25
    t.varchar "bin", limit: 25
    t.char "pallet_unlimited", limit: 1, default: "N"
    t.index ["code"], name: "idx_locations_code", unique: true
  end

  create_table "lookups", id: :integer, force: :cascade do |t|
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.varchar "table_name", limit: 50
    t.varchar "whereclause", limit: 250
    t.decimal "version", precision: 10
    t.varchar "updated_by_code", limit: 25
  end

  create_table "menus", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "menu_name", limit: 50
    t.integer "moodule_id", null: false
    t.varchar "menu_type", limit: 1, null: false
    t.integer "menu_id"
    t.integer "document_id"
    t.integer "sequence", default: 0, null: false
    t.varchar "page_heading", limit: 100
    t.varchar "menu_code", limit: 25
    t.varchar "moodule_name", limit: 50
    t.varchar "document_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "visible_flag", limit: 1, default: "Y"
    t.index ["moodule_id", "document_id"], name: "idx_menus_module_document_id"
  end

  create_table "metal_purchase_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "ref_type", limit: 1
    t.integer "metal_id"
    t.integer "metal_packet_id"
    t.integer "metal_purchase_id"
    t.varchar "location_code", limit: 25
    t.varchar "metal_type", limit: 10
    t.varchar "metal_color", limit: 4
    t.decimal "metal_size", precision: 5, scale: 2
    t.decimal "commission_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "pcs", precision: 10, scale: 2
    t.decimal "ref_pcs", precision: 10, scale: 2
    t.decimal "clear_pcs", precision: 10, scale: 2
    t.decimal "wt", precision: 12, scale: 3
    t.varchar "wt_unit", limit: 1
    t.decimal "ref_wt", precision: 12, scale: 3
    t.decimal "clear_wt", precision: 12, scale: 3
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "line_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.decimal "cost", precision: 10, scale: 2
    t.varchar "sell_unit", limit: 4
    t.varchar "type", limit: 50
    t.varchar "account_period_code", limit: 8
    t.varchar "metal_code", limit: 25
    t.varchar "metal_packet_code", limit: 25
    t.varchar "remarks", limit: 30
    t.decimal "duty_per", precision: 6, scale: 2
    t.decimal "duty_amt", precision: 12, scale: 2
    t.varchar "updated_by_code", limit: 25
    t.integer "location_id"
    t.varchar "metal_description", limit: 2000
    t.varchar "wb_bk", limit: 4
    t.varchar "wb_no", limit: 18
    t.datetime "wb_date", precision: nil
    t.varchar "wb_type", limit: 1
    t.decimal "wb_approx_value", precision: 12, scale: 2
    t.varchar "metal_flag", limit: 1
    t.datetime "estimated_ship_date", precision: nil
  end

  create_table "metal_purchases", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "vendor_id"
    t.integer "company_store_id"
    t.varchar "account_period_code", limit: 8
    t.varchar "shipping_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "trans_type", limit: 1
    t.varchar "post_flag", limit: 1
    t.varchar "ref_type", limit: 1
    t.decimal "ship_per", precision: 6, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 2
    t.decimal "tax_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "lines_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "commission_per", precision: 6, scale: 2
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "po_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "bill_name", limit: 50
    t.datetime "ref_trans_dt", precision: nil
    t.datetime "po_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.decimal "total_pcs", precision: 12, scale: 2
    t.decimal "total_wt", precision: 12, scale: 3
    t.decimal "labor_amt", precision: 12, scale: 2
    t.decimal "metal_amt", precision: 12, scale: 2
    t.varchar "wt_unit", limit: 1
    t.decimal "gold_price", precision: 6, scale: 2
    t.decimal "platinium_price", precision: 12, scale: 2
    t.decimal "silver_price", precision: 12, scale: 2
    t.decimal "plladium_price", precision: 12, scale: 2
    t.decimal "metal_markup", precision: 5, scale: 2
    t.varchar "location", limit: 25
    t.varchar "type", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "company_store_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "wb_issue_flag", limit: 1
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "metal_sale_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "ref_type", limit: 1
    t.integer "metal_packet_id"
    t.integer "metal_id"
    t.integer "metal_sale_id"
    t.varchar "location_code", limit: 25
    t.varchar "metal_type", limit: 18
    t.varchar "metal_color", limit: 18
    t.decimal "commission_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "metal_size", precision: 6, scale: 2
    t.decimal "pcs", precision: 10, scale: 2
    t.decimal "ref_pcs", precision: 10, scale: 2
    t.decimal "clear_pcs", precision: 10, scale: 2
    t.decimal "wt", precision: 12, scale: 3
    t.decimal "ref_wt", precision: 12, scale: 3
    t.decimal "clear_wt", precision: 12, scale: 3
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "line_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.decimal "cost", precision: 10, scale: 2
    t.varchar "sell_unit", limit: 4
    t.varchar "type", limit: 50
    t.varchar "account_period_code", limit: 8
    t.varchar "metal_code", limit: 25
    t.varchar "metal_packet_code", limit: 25
    t.integer "location_id"
    t.varchar "metal_flag", limit: 1
  end

  create_table "metal_sales", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.integer "customer_id"
    t.integer "customer_shipping_id"
    t.varchar "account_period_code", limit: 8
    t.varchar "shipping_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.varchar "ref_trans_no", limit: 18
    t.varchar "trans_type", limit: 1
    t.varchar "post_flag", limit: 1
    t.varchar "ref_type", limit: 1
    t.decimal "ship_per", precision: 6, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 2
    t.decimal "tax_per", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "lines_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "commission_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "commission_per", precision: 6, scale: 2
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "po_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "bill_name", limit: 50
    t.datetime "ref_trans_dt", precision: nil
    t.datetime "po_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.decimal "total_pcs", precision: 12, scale: 2
    t.decimal "total_wt", precision: 12, scale: 3
    t.varchar "type", limit: 50
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "metals", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 25
    t.integer "metal_category_id"
    t.varchar "metal_type", limit: 10
    t.varchar "metal_color", limit: 4
    t.decimal "gm_wt", precision: 10, scale: 4
    t.decimal "dwt_wt", precision: 10, scale: 4
    t.varchar "wt_unit", limit: 4
    t.decimal "finished_wt", precision: 10, scale: 4
    t.decimal "pieces", precision: 6, scale: 2
    t.decimal "size", precision: 10, scale: 4
    t.decimal "cost_pc", precision: 10, scale: 4
    t.decimal "cost_wtunit", precision: 10, scale: 4
    t.decimal "markup", precision: 10, scale: 4
    t.decimal "price_pc", precision: 10, scale: 4
    t.decimal "basegoldprice", precision: 10, scale: 4
    t.varchar "vendor_instruction", limit: 25
    t.decimal "total_cost_pc", precision: 10, scale: 4
    t.decimal "gold_markup", precision: 10, scale: 4
    t.decimal "wt", precision: 10, scale: 4
    t.decimal "total_cost_wt", precision: 10, scale: 4
    t.decimal "total_markup", precision: 10, scale: 4
    t.decimal "total_price", precision: 10, scale: 4
    t.varchar "labor_unit", limit: 4
    t.varchar "sell_unit", limit: 4
    t.decimal "duty_amt", precision: 12, scale: 3
    t.varchar "po_flag", limit: 1
    t.varchar "metal_flag", limit: 1
    t.decimal "gold_increment", precision: 9, scale: 7
    t.varchar "updated_by_code", limit: 25
    t.varchar "cert_flag", limit: 1, default: "N"
    t.varchar "metal_category_code", limit: 25
  end

  create_table "moodules", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "moodule_name", limit: 50
    t.integer "sequence"
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_moodules_code", unique: true
  end

  create_table "note_templates", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.varchar "code", limit: 25
    t.varchar "description", limit: 200
    t.varchar "subject", limit: 200
    t.varchar "updated_by_code", limit: 25
  end

  create_table "notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "table_name", limit: 30
    t.integer "trans_id"
    t.integer "user_id", null: false
    t.datetime "date_added", precision: nil
    t.varchar "subject", limit: 100
    t.varchar "description", limit: 500
    t.varchar "notes_type", limit: 1, default: "M"
    t.varchar "email_from", limit: 50
    t.varchar "email_to", limit: 500
    t.varchar "email_cc", limit: 500
    t.varchar "email_bcc", limit: 500
    t.varchar "notes_category", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["table_name", "trans_id"], name: "notes_trans_id"
  end

  create_table "operation_completes", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "operation_config_id", null: false
    t.varchar "rake_task_name", limit: 50
    t.datetime "completed_at", precision: nil
    t.varchar "status", limit: 25
    t.varchar "result", limit: 500
    t.varchar "log_file_name", limit: 250
    t.string "xml_arg"
  end

  create_table "operation_configs", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "operation_name", limit: 50
    t.varchar "rake_task_name", limit: 50
  end

  create_table "operations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "operation_config_id", null: false
    t.varchar "rake_task_name", limit: 50
    t.datetime "scheduled_at", precision: nil
    t.string "xml_arg"
    t.index ["operation_config_id"], name: "idx_operations_op_config_id"
  end

  create_table "option_exception_charges", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "order_type", limit: 1, null: false
    t.varchar "order_sub_type", limit: 20, null: false
    t.varchar "option_code", limit: 25
    t.varchar "option_value_code", limit: 25
    t.varchar "charge_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "option_id"
    t.integer "charge_id"
    t.integer "option_value_id"
    t.index ["option_id", "option_value_id", "charge_id"], name: "idx_option_exc_option_id"
  end

  create_table "order_master_stages", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "stage_code", limit: 50
    t.varchar "stage_name", limit: 50
    t.integer "sequence_no"
    t.varchar "main_stage_flag", limit: 1, default: "N"
  end

  create_table "payment_customer_payment_profiles", id: :integer, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "payment_responses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "x_trans_id", limit: 50, null: false
    t.varchar "x_auth_code", limit: 50
    t.varchar "x_response_code", limit: 50
    t.varchar "x_response_reason_code", limit: 50
    t.varchar "x_response_reason_text", limit: 50
    t.varchar "customer_code", limit: 50
    t.varchar "customer_company", limit: 50
    t.varchar "customer_email", limit: 50
    t.varchar "paid_amount", limit: 50
    t.varchar "credit_card_number", limit: 50
    t.varchar "card_type", limit: 50
    t.varchar "payment_method", limit: 50
    t.varchar "cavv_response", limit: 50
    t.varchar "avs_code", limit: 50
    t.varchar "x_type", limit: 50
    t.varchar "trans_no", limit: 18
    t.integer "sales_order_id"
  end

  create_table "pending_proofs", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sales_order_id"
    t.varchar "sales_order_trans_no", limit: 18
    t.varchar "email_to", limit: 500
    t.varchar "proof_sent", limit: 1, default: "N"
    t.integer "attempts", default: 0
    t.varchar "error_code", limit: 500
    t.index ["trans_flag", "proof_sent", "attempts"], name: "idx_pending_proofs_trans_flag_proof_sent_attempts"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.integer "twilio_integration_id"
    t.string "notification_type", limit: 50
    t.string "phone_number"
    t.string "country_code", limit: 5
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "update_flag", limit: 1, default: "Y"
    t.string "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
  end

  create_table "physical_inventories", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.varchar "account_period_code", limit: 8, null: false
    t.varchar "ext_ref_no", limit: 25
    t.datetime "ext_ref_date", precision: nil
    t.varchar "remarks", limit: 255
    t.varchar "updated_by_code", limit: 25
  end

  create_table "physical_inventory_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "physical_inventory_id", null: false
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "memo_flag", limit: 1
    t.decimal "item_qty", precision: 16, scale: 4
    t.decimal "item_price", precision: 12, scale: 2
    t.decimal "item_amount", precision: 12, scale: 2
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
  end

  create_table "pms_hexadecimal_codes", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "pms_code", limit: 20
    t.varchar "hexadecimal_code", limit: 7
  end

  create_table "pms_hexadecimal_codes_backup", id: false, force: :cascade do |t|
    t.integer "id", limit: 2, null: false
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "pms_code", limit: 20
    t.varchar "hexadecimal_code", limit: 7
  end

  create_table "pmsmatch_temp", id: false, force: :cascade do |t|
    t.text "buying_id"
    t.integer "id", null: false
    t.text "buying_group_code"
    t.integer "customer_item_pricing_id", null: false
  end

  create_table "po_allocations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "order_no", limit: 18, null: false
    t.varchar "po_no", limit: 18, null: false
    t.varchar "po_serial_no", limit: 6, null: false
    t.datetime "estimated_arrival_date", precision: nil
    t.char "shipping_serial_no", limit: 6
  end

  create_table "po_allocations_bk20221128", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "order_no", limit: 18, null: false
    t.varchar "po_no", limit: 18, null: false
    t.varchar "po_serial_no", limit: 6, null: false
    t.datetime "estimated_arrival_date", precision: nil
    t.char "shipping_serial_no", limit: 6
  end

  create_table "portal_order_statuses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "internal_status", limit: 255, null: false
    t.varchar "portal_status", limit: 255, null: false
    t.index ["internal_status"], name: "IX_portal_order_statuses_internal_status"
  end

  create_table "pos_appraisals", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.integer "cashier_id"
    t.varchar "cashier_code", limit: 25
    t.integer "assosiate_id"
    t.varchar "assosiate_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "bill_zip", limit: 15
    t.varchar "bill_country", limit: 20
    t.varchar "bill_first_name", limit: 50
    t.varchar "bill_last_name", limit: 50
    t.varchar "bill_email", limit: 100
    t.varchar "bill_cell_no", limit: 15
    t.varchar "ext_ref_no", limit: 25
    t.datetime "ext_ref_date", precision: nil
    t.integer "terminal_id"
    t.varchar "terminal_code", limit: 25
    t.datetime "due_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.varchar "salesperson_code", limit: 25
    t.decimal "item_qty", precision: 10, scale: 2
    t.varchar "remarks", limit: 255
    t.varchar "term_code", limit: 25
    t.varchar "tax_code", limit: 25
    t.decimal "tax_per", precision: 6, scale: 3
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "total_appraisal_fee", precision: 12, scale: 2
    t.decimal "net_appraisal_fee", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "deposit_amt", precision: 12, scale: 2
    t.datetime "next_due_date", precision: nil
    t.varchar "generate_new_gift_certificate", limit: 1, default: "N"
    t.datetime "new_gift_certificate_expiry_date", precision: nil
    t.decimal "new_gift_certificate_value", precision: 12, scale: 2
    t.varchar "new_gift_certificate_no", limit: 25
    t.varchar "generate_new_store_credit", limit: 1, default: "N"
    t.decimal "new_store_credit_value", precision: 12, scale: 2
    t.varchar "new_store_credit_no", limit: 25
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 10, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 10, scale: 2
    t.decimal "duty_amt", precision: 12, scale: 2
  end

  create_table "pos_invoice_addresses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "pos_invoice_id"
    t.varchar "ship_contact1", limit: 50, default: ""
    t.varchar "ship_address1", limit: 50, default: ""
    t.varchar "ship_address2", limit: 50, default: ""
    t.varchar "ship_phone1", limit: 50, default: ""
    t.varchar "ship_fax1", limit: 50, default: ""
    t.varchar "ship_city", limit: 25, default: ""
    t.varchar "ship_state", limit: 25, default: ""
    t.varchar "ship_zip", limit: 15, default: ""
    t.varchar "ship_country", limit: 20, default: ""
    t.varchar "ship_via_code", limit: 25, default: ""
    t.datetime "ship_date", precision: nil
    t.varchar "tracking_no", limit: 50
    t.varchar "bill_contact1", limit: 50, default: ""
    t.varchar "bill_address1", limit: 50, default: ""
    t.varchar "bill_address2", limit: 50, default: ""
    t.varchar "bill_phone1", limit: 50, default: ""
    t.varchar "bill_fax1", limit: 50, default: ""
    t.varchar "bill_city", limit: 25, default: ""
    t.varchar "bill_state", limit: 25, default: ""
    t.varchar "bill_zip", limit: 15, default: ""
    t.varchar "bill_country", limit: 20, default: ""
    t.varchar "bill_first_name", limit: 50
    t.varchar "bill_last_name", limit: 50
    t.varchar "ship_first_name", limit: 50
    t.varchar "ship_last_name", limit: 50
    t.varchar "billing_email", limit: 200
    t.varchar "billing_cell_no", limit: 15
    t.varchar "shipping_cell_no", limit: 15
    t.varchar "shipping_email", limit: 200
    t.varchar "updated_by_code", limit: 25
    t.varchar "ship_code", limit: 25
  end

  create_table "pos_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "trans_type", limit: 1, default: "S"
    t.integer "lock_version", default: 0
    t.integer "pos_invoice_id"
    t.integer "ref_pos_invoice_id"
    t.integer "catalog_item_id"
    t.varchar "serial_no", limit: 6
    t.varchar "item_name", limit: 50
    t.varchar "item_description", limit: 100
    t.decimal "discount_per", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.datetime "trans_date", precision: nil
    t.varchar "trans_bk", limit: 4
    t.varchar "account_period_code", limit: 8
    t.varchar "item_type", limit: 1
    t.varchar "catalog_item_code", limit: 25
    t.varchar "trans_no", limit: 18
    t.varchar "customer_sku_no", limit: 25
    t.integer "ref_trans_id"
    t.varchar "ref_type", limit: 3
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "ref_serial_no", limit: 6
    t.datetime "ref_trans_date", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.decimal "retail_price", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.decimal "unit_discount", precision: 12, scale: 2
    t.integer "ref_trans_line_id"
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 25
    t.varchar "is_unique_item", limit: 1, default: "N"
    t.varchar "wb_type", limit: 4
    t.integer "wb_trans_id"
    t.varchar "wb_trans_bk", limit: 4
    t.varchar "wb_trans_no", limit: 18
    t.datetime "wb_trans_date", precision: nil
    t.decimal "purchase_price", precision: 12, scale: 2
    t.varchar "show_discount_in_print", limit: 1, default: "Y"
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 12, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 12, scale: 2
    t.varchar "unit", limit: 4
    t.varchar "mm_size", limit: 25
    t.varchar "metal_type", limit: 4
    t.decimal "gold_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "diamond_wt", precision: 12, scale: 4, default: 0.0
  end

  create_table "pos_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_no", limit: 18
    t.varchar "trans_bk", limit: 4
    t.datetime "trans_date", precision: nil
    t.datetime "expiry_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "promo_code", limit: 25
    t.varchar "store_code", limit: 25
    t.integer "cashier_id"
    t.integer "assosiate_id"
    t.integer "customer_id"
    t.decimal "discount_per", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 10, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 10, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 10, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 10, scale: 2, default: 0.0
    t.varchar "term_code", limit: 25
    t.datetime "sales_date", precision: nil
    t.varchar "shipping_code", limit: 25
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.decimal "item_qty", precision: 10, scale: 2, default: 0.0
    t.varchar "ext_ref_no", limit: 25
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "salesperson_code", limit: 25
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.integer "customer_receipt_id"
    t.varchar "updated_by_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.varchar "cashier_code", limit: 25
    t.varchar "assosiate_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.integer "terminal_id"
    t.varchar "terminal_code", limit: 25
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "on_account_amt", precision: 12, scale: 2
    t.datetime "on_account_due_date", precision: nil
    t.integer "store_id"
    t.varchar "tax_code", limit: 25
    t.decimal "deposited_amt", precision: 12, scale: 2
    t.varchar "delivery_method", limit: 1
    t.varchar "shipped_flag", limit: 1, default: "N"
    t.varchar "department", limit: 50
    t.varchar "generate_new_gift_certificate", limit: 1, default: "N"
    t.datetime "new_gift_certificate_expiry_date", precision: nil
    t.decimal "new_gift_certificate_value", precision: 12, scale: 2
    t.varchar "new_gift_certificate_no", limit: 25
    t.varchar "generate_new_store_credit", limit: 1, default: "N"
    t.decimal "new_store_credit_value", precision: 12, scale: 2
    t.varchar "new_store_credit_no", limit: 25
    t.varchar "total_change_flag", limit: 1, default: "N"
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 10, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 10, scale: 2
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "pos_order_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "pos_order_id"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.varchar "serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.varchar "item_name", limit: 50
    t.varchar "item_description", limit: 100
    t.varchar "customer_description", limit: 1000
    t.varchar "internal_description", limit: 1000
    t.varchar "location_code", limit: 25
    t.varchar "location_id", limit: 255
    t.decimal "item_qty", precision: 6, scale: 2
    t.decimal "clear_qty", precision: 6, scale: 2
    t.decimal "retail_price", precision: 12, scale: 2
    t.decimal "estimate_value", precision: 12, scale: 2
    t.varchar "estimate_flag", limit: 1, default: "N"
    t.datetime "estimate_date", precision: nil
    t.decimal "approx_value", precision: 12, scale: 2
    t.decimal "item_price", precision: 12, scale: 2
    t.decimal "item_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "unit_discount", precision: 12, scale: 2
    t.decimal "tax_per", precision: 6, scale: 3
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.varchar "wb_type", limit: 4
    t.integer "wb_trans_id"
    t.varchar "wb_trans_bk", limit: 4
    t.varchar "wb_trans_no", limit: 18
    t.datetime "wb_trans_date", precision: nil
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 25
    t.varchar "is_unique_item", limit: 1, default: "N"
    t.varchar "like_style", limit: 25
    t.varchar "like_sku", limit: 25
    t.varchar "metal_color", limit: 25
    t.varchar "single_price", limit: 25
    t.varchar "finish", limit: 25
    t.varchar "appraisal", limit: 25
    t.varchar "stone_description", limit: 50
    t.varchar "style_size", limit: 10
    t.varchar "show_discount_in_print", limit: 1, default: "Y"
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 12, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 12, scale: 2
    t.varchar "unit", limit: 4
    t.varchar "mm_size", limit: 25
    t.varchar "metal_type", limit: 10
    t.decimal "gold_wt", precision: 12, scale: 4, default: 0.0
    t.decimal "diamond_wt", precision: 12, scale: 4, default: 0.0
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "vendor_style_no", limit: 25
    t.varchar "image_name", limit: 100
    t.varchar "gender", limit: 25
  end

  create_table "pos_orders", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.varchar "trans_type", limit: 1
    t.varchar "promo_code", limit: 25
    t.integer "cashier_id"
    t.varchar "cashier_code", limit: 25
    t.integer "assosiate_id"
    t.varchar "assosiate_code", limit: 25
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "bill_zip", limit: 15
    t.varchar "bill_country", limit: 20
    t.varchar "bill_first_name", limit: 50
    t.varchar "bill_last_name", limit: 50
    t.varchar "bill_email", limit: 200
    t.varchar "bill_cell_no", limit: 15
    t.varchar "ship_name", limit: 25
    t.varchar "ship_first_name", limit: 25
    t.varchar "ship_last_name", limit: 25
    t.varchar "ship_address1", limit: 25
    t.varchar "ship_address2", limit: 25
    t.varchar "ship_phone", limit: 25
    t.varchar "ship_fax", limit: 25
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_cell_no", limit: 15
    t.varchar "ship_email", limit: 200
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.integer "terminal_id"
    t.varchar "terminal_code", limit: 25
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "cancel_date", precision: nil
    t.varchar "shipping_code", limit: 25
    t.varchar "salesperson_code", limit: 25
    t.decimal "item_qty", precision: 6, scale: 2
    t.varchar "remarks", limit: 255
    t.decimal "ship_amt", precision: 12, scale: 2
    t.varchar "term_code", limit: 25
    t.varchar "tax_code", limit: 25
    t.decimal "tax_per", precision: 6, scale: 3
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 3
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "item_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "deposit_amt", precision: 12, scale: 2
    t.datetime "next_due_date", precision: nil
    t.datetime "pick_date", precision: nil
    t.varchar "delivery_method", limit: 1, default: "P"
    t.varchar "department", limit: 50
    t.varchar "generate_new_gift_certificate", limit: 1, default: "N"
    t.datetime "new_gift_certificate_expiry_date", precision: nil
    t.decimal "new_gift_certificate_value", precision: 12, scale: 2
    t.varchar "new_gift_certificate_no", limit: 25
    t.varchar "generate_new_store_credit", limit: 1, default: "N"
    t.decimal "new_store_credit_value", precision: 12, scale: 2
    t.varchar "new_store_credit_no", limit: 25
    t.varchar "total_change_flag", limit: 1, default: "N"
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 10, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 10, scale: 2
    t.varchar "ship_code", limit: 25
  end

  create_table "predefined_texts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "predefined_text_type", limit: 250
    t.varchar "subtype", limit: 250
    t.varchar "description", limit: 500
  end

  create_table "promostandard_order_status_types", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "promostandard_status_id", null: false
    t.varchar "promostandard_status_name", limit: 256
    t.varchar "promostandard_description", limit: 1024
    t.varchar "promoflow_workflow_location", limit: 50
    t.varchar "additional_explanation", limit: 2014
    t.varchar "response_required", limit: 5
  end

  create_table "prop65_states", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version", default: 0
    t.char "state_code", limit: 25
    t.varchar "state_name", limit: 50
  end

  create_table "ps_send_po_digital_proof_addresses", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_digital_proof_id", null: false
    t.varchar "email", limit: 128
    t.integer "lineItemGroupingId"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "address_type", limit: 64
  end

  create_table "ps_send_po_digital_proofs", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_id", null: false
    t.varchar "required", limit: 8
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_charge_quantities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_charge_id", null: false
    t.decimal "value", precision: 12, scale: 4
    t.varchar "uom", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_charges", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_id", null: false
    t.varchar "chargeId", limit: 64
    t.varchar "chargeName", limit: 128
    t.varchar "description", limit: 4000
    t.varchar "chargeType", limit: 4000
    t.decimal "unitprice", precision: 12, scale: 4
    t.decimal "extendedPrice", precision: 12, scale: 4
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decoration_artwork_dimensions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_decoration_artwork_id", null: false
    t.varchar "geometry", limit: 64
    t.varchar "useMaxLocationDimensions", limit: 8
    t.decimal "height", precision: 12, scale: 4
    t.decimal "width", precision: 12, scale: 4
    t.decimal "diameter", precision: 12, scale: 4
    t.varchar "uom", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decoration_artwork_layer_layer_or_stops", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_decoration_artwork_layer_id", null: false
    t.varchar "nameOrNumber", limit: 64
    t.varchar "description", limit: 4000
    t.varchar "color", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decoration_artwork_layers", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_decoration_artwork_id", null: false
    t.varchar "colorSystem", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decoration_artwork_typesets", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_decoration_artwork_id", null: false
    t.integer "sequenceNumber"
    t.varchar "value", limit: 1024
    t.varchar "font", limit: 64
    t.integer "fontSize"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decoration_artworks", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_decoration_id", null: false
    t.varchar "refArtworkId", limit: 64
    t.varchar "description", limit: 4000
    t.varchar "fileName", limit: 64
    t.varchar "fileLocation", limit: 1024
    t.varchar "transportMechanism", limit: 64
    t.varchar_max "instructions"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_location_decorations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_location_id", null: false
    t.integer "decorationId"
    t.varchar "decorationName", limit: 128
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configuration_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_configuration_id", null: false
    t.integer "locationLinkId"
    t.integer "locationId"
    t.varchar "locationName", limit: 128
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_configurations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_id", null: false
    t.varchar "referenceNumber", limit: 64
    t.varchar "referenceNumberType", limit: 64
    t.varchar "preProductionProof", limit: 8
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_part_location_links", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_part_id", null: false
    t.integer "locationLinkId"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_part_quantities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_part_id", null: false
    t.decimal "value", precision: 12, scale: 4
    t.varchar "uom", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_part_shipment_link_quantities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_part_shipment_link_id", null: false
    t.decimal "value", precision: 12, scale: 4
    t.varchar "uom", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_part_shipment_links", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_part_id", null: false
    t.varchar "shipmentId", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_parts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_id", null: false
    t.varchar "partGroup", limit: 64
    t.varchar "partId", limit: 64
    t.varchar "customerPartId", limit: 64
    t.varchar "description", limit: 4000
    t.decimal "unitPrice", precision: 12, scale: 4
    t.decimal "extendedPrice", precision: 12, scale: 4
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_programs", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_id", null: false
    t.varchar "program_id", limit: 64
    t.varchar "name", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_quantities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_id", null: false
    t.decimal "value", precision: 12, scale: 4
    t.varchar "uom", limit: 2
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_item_tolerance_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_line_item_id", null: false
    t.varchar "tolerance", limit: 64
    t.decimal "value", precision: 12, scale: 4
    t.varchar "uom", limit: 10
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_line_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_id", null: false
    t.varchar "lineNumber", limit: 64
    t.varchar_max "description"
    t.varchar "lineType", limit: 64
    t.varchar "fobId", limit: 64
    t.varchar "allowPartialShipments", limit: 8
    t.decimal "unitPrice", precision: 12, scale: 4
    t.decimal "extendedPrice", precision: 12, scale: 4
    t.datetime "requestedShipDate", precision: nil
    t.datetime "requestedInHands", precision: nil
    t.varchar "referenceSalesQuote", limit: 64
    t.varchar "endCustomerSalesOrder", limit: 64
    t.varchar "productId", limit: 64
    t.varchar "customerProductId", limit: 64
    t.varchar "lineItemGroupingId", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "so_created", limit: 1
    t.varchar "so_nos", limit: 150
  end

  create_table "ps_send_po_order_contact_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_order_contact_id", null: false
    t.varchar "attentionTo", limit: 128
    t.varchar "addressLine1", limit: 64
    t.varchar "addressLine2", limit: 64
    t.varchar "addressLine3", limit: 64
    t.varchar "addressLine4", limit: 64
    t.varchar "city", limit: 64
    t.varchar "state", limit: 2
    t.varchar "country", limit: 2
    t.varchar "postalCode", limit: 64
    t.varchar "email", limit: 128
    t.varchar "phone", limit: 64
    t.varchar_max "comments"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_order_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_id", null: false
    t.varchar "contactType", limit: 64
    t.varchar "accountName", limit: 64
    t.varchar "accountNumber", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipment_freight_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_shipment_id", null: false
    t.varchar "carrier", limit: 64
    t.varchar "service", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipment_ship_to_contact_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_shipment_ship_to_id", null: false
    t.varchar "attentionTo", limit: 128
    t.varchar "addressLine1", limit: 64
    t.varchar "addressLine2", limit: 64
    t.varchar "addressLine3", limit: 64
    t.varchar "addressLine4", limit: 64
    t.varchar "city", limit: 64
    t.varchar "state", limit: 2
    t.varchar "country", limit: 2
    t.varchar "postalCode", limit: 64
    t.varchar "email", limit: 128
    t.varchar "phone", limit: 64
    t.varchar_max "comments"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipment_ship_tos", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_shipment_id", null: false
    t.varchar "shipmentId", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipment_third_party_account_contact_details", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_shipment_third_party_account_id", null: false
    t.varchar "attentionTo", limit: 128
    t.varchar "addressLine1", limit: 64
    t.varchar "addressLine2", limit: 64
    t.varchar "addressLine3", limit: 64
    t.varchar "addressLine4", limit: 64
    t.varchar "city", limit: 64
    t.varchar "state", limit: 2
    t.varchar "country", limit: 2
    t.varchar "postalCode", limit: 64
    t.varchar "email", limit: 128
    t.varchar "phone", limit: 64
    t.varchar_max "comments"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipment_third_party_accounts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_shipment_id", null: false
    t.varchar "accountName", limit: 64
    t.varchar "accountNumber", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_shipments", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_id", null: false
    t.varchar "shipReferences", limit: 64
    t.varchar "packingListRequired", limit: 8
    t.varchar "blindShip", limit: 8
    t.varchar "allowConsolidation", limit: 8
    t.varchar_max "comments"
    t.varchar "shipReference1", limit: 64
    t.varchar "shipReference2", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_tax_information_tax_jurisdictions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "ps_send_po_tax_information_id"
    t.varchar "taxJurisdiction", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_po_tax_informations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "ps_send_po_id", null: false
    t.varchar "taxId", limit: 64
    t.varchar "taxType", limit: 64
    t.varchar "taxExempt", limit: 8
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
  end

  create_table "ps_send_pos", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lock_version", null: false
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "orderType", limit: 64
    t.varchar "orderNumber", limit: 64
    t.datetime "orderDate", precision: nil
    t.datetime "lastModified", precision: nil
    t.varchar "orderVersion", limit: 64
    t.decimal "totalAmount", precision: 12, scale: 4
    t.varchar "paymentTerms", limit: 64
    t.integer "rush"
    t.varchar "currency", limit: 64
    t.varchar_max "termsAndConditions"
    t.varchar "salesChannel", limit: 64
    t.varchar "promoCode", limit: 64
    t.varchar "discountMethod", limit: 64
    t.varchar "discountType", limit: 64
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.integer "user_id", null: false
    t.varchar "user_code", limit: 25, null: false
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
  end

  create_table "purchase_credit_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_credit_invoice_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "vendor_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "customer_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.index ["purchase_credit_invoice_id"], name: "idx_purchase_credit_invoice_lines_purchase_credit_invoice_id"
  end

  create_table "purchase_credit_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "vendor_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "purchase_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.datetime "due_date", precision: nil
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "ref_no", limit: 18
    t.integer "store_id"
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "store_code", limit: 25
    t.index ["company_id", "trans_no"], name: "purchase_credit_invoices_company_id_trans_no"
  end

  create_table "purchase_indent_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_indent_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
  end

  create_table "purchase_indents", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "indent_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "purchase_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_invoice_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1, default: "I"
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 5, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 3, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "vendor_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "customer_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 3
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.decimal "ref_item_price", precision: 12, scale: 5, default: 0.0
    t.index ["purchase_invoice_id"], name: "idx_purchase_invoice_lines_purchase_invoice_id"
  end

  create_table "purchase_invoice_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_invoice_id"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.datetime "activity_date", precision: nil
    t.varchar "purchase_invoice_stage_code", limit: 100
    t.varchar "remarks", limit: 200
    t.integer "user_id"
    t.integer "sequence_no"
  end

  create_table "purchase_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "vendor_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "purchase_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 3, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.datetime "due_date", precision: nil
    t.varchar "billed_flag", limit: 1, default: "N"
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 3, default: 0.0
    t.varchar "ref_no", limit: 18
    t.integer "store_id"
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "store_code", limit: 25
    t.char "hold_invoice_flag", limit: 1
    t.varchar "vrm_task_no", limit: 18
    t.index ["company_id", "trans_no"], name: "purchase_invoices_company_id_trans_no"
  end

  create_table "purchase_memo_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_memo_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "customer_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.varchar "is_unique_item", limit: 1, default: "N"
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 25
    t.decimal "sales_price", precision: 12, scale: 2
    t.varchar "metal_type", limit: 10
    t.decimal "gold_wt", precision: 12, scale: 4, default: 0.0
    t.varchar "unit", limit: 4
    t.decimal "diamond_wt", precision: 12, scale: 4, default: 0.0
    t.varchar "mm_size", limit: 25
    t.varchar "wb_type", limit: 1
    t.integer "wb_trans_id"
    t.varchar "wb_trans_bk", limit: 4
    t.varchar "wb_trans_no", limit: 18
    t.datetime "wb_trans_date", precision: nil
  end

  create_table "purchase_memos", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "vendor_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "purchase_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 6, scale: 2, default: 0.0
    t.decimal "clear_qty", precision: 6, scale: 2, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.datetime "due_date", precision: nil
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "ref_no", limit: 18
    t.integer "store_id"
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "store_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "memo_category", limit: 25
    t.decimal "gold_base_rate", precision: 12, scale: 2
    t.varchar "bill_email", limit: 50
    t.varchar "ship_email", limit: 50
    t.varchar "wb_issue_flag", limit: 1
    t.decimal "duty_amt", precision: 12, scale: 2, default: 0.0
  end

  create_table "purchase_order_cancel_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_order_cancel_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "vendor_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "customer_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.index ["purchase_order_cancel_id"], name: "idx_purchase_order_cancel_lines_purchase_order_cancel_id"
  end

  create_table "purchase_order_cancels", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "vendor_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "purchase_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.datetime "due_date", precision: nil
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "ref_no", limit: 18
    t.integer "store_id"
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "store_code", limit: 25
    t.index ["company_id", "trans_no"], name: "purchase_order_cancels_company_id_trans_no"
  end

  create_table "purchase_order_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_order_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 4, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "vendor_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.datetime "ship_date", precision: nil
    t.datetime "vendor_ship_date", precision: nil
    t.decimal "vendor_price", precision: 12, scale: 2
    t.varchar "acknowledge_flag", limit: 255, default: "N"
    t.datetime "acknowledge_date", precision: nil
    t.integer "acknowledge_user_id"
    t.varchar "accepted_flag", limit: 255, default: "N"
    t.datetime "accepted_date", precision: nil
    t.integer "accepted_user_id"
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "customer_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.datetime "estimated_arrival_date", precision: nil
    t.datetime "estimated_ship_date", precision: nil
    t.varchar "parent_item_code", limit: 25
    t.integer "parent_item_id"
    t.integer "delay_days"
    t.varchar "shipment_no", limit: 25
    t.varchar "shipment_tracking_no", limit: 50
    t.varchar "purchase_receive_no", limit: 25
    t.varchar "barcode", limit: 25
    t.datetime "expiry_date", precision: nil
    t.decimal "received_qty", precision: 12, scale: 4, default: 0.0
    t.index ["purchase_order_id"], name: "idx_purchase_order_lines_purchase_order_id"
  end

  create_table "purchase_order_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.decimal "ship_qty", precision: 12, scale: 4
    t.varchar "tracking_no", limit: 50
    t.varchar "fob", limit: 25
    t.varchar "ship_code", limit: 50
    t.integer "ship_id"
    t.varchar "ship_attention", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "shipping_code", limit: 50
    t.varchar "shipvia_accountnumber", limit: 50
    t.index ["purchase_order_id"], name: "idx_po_shippings_po_id"
  end

  create_table "purchase_order_shippings20230817", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "purchase_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.decimal "ship_qty", precision: 12, scale: 4
    t.varchar "tracking_no", limit: 50
    t.varchar "fob", limit: 25
    t.varchar "ship_code", limit: 50
    t.integer "ship_id"
    t.varchar "ship_attention", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "shipping_code", limit: 50
    t.varchar "shipvia_accountnumber", limit: 50
  end

  create_table "purchase_order_statuses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 50
    t.varchar "description", limit: 100
    t.integer "sequence_no"
  end

  create_table "purchase_order_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_order_id"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.datetime "activity_date", precision: nil
    t.varchar "purchase_order_stage_code", limit: 100
    t.varchar "remarks", limit: 200
    t.integer "user_id"
    t.integer "sequence_no"
    t.index ["purchase_order_id"], name: "idx_po_trans_actv_po_id"
  end

  create_table "purchase_orders", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "vendor_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "purchase_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 16, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.datetime "due_date", precision: nil
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "ref_no", limit: 18
    t.integer "store_id"
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "store_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "eta_receipt", limit: 50
    t.varchar "po_confirm_salt", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "ship_attention", limit: 50
    t.varchar "po_status", limit: 50
    t.datetime "po_status_date", precision: nil
    t.char "hold_order_flag", limit: 1
    t.datetime "confirmed_at", precision: nil
    t.integer "confirmed_by"
    t.varchar "vrm_task_no", limit: 18
    t.index ["company_id", "trans_no"], name: "purchase_orders_company_id_trans_no"
    t.index ["vendor_id"], name: "ix_purchase_orders_vendor_id"
  end

  create_table "purchase_receive_attachments", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_receive_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "shipping_vendor_id", limit: 6
    t.varchar "attachment_type", limit: 50
    t.varchar "attachment_file_path", limit: 250
    t.varchar "attachment_file_name", limit: 250
    t.varchar "subject", limit: 100
    t.varchar "comment", limit: 1000
    t.char "uploaded_file_size", limit: 10
    t.index ["purchase_receive_id", "trans_flag"], name: "IX_purchase_receive_attachments"
  end

  create_table "purchase_receive_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "purchase_receive_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1, default: "I"
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 5, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 3, default: 0.0
    t.integer "store_id"
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "remarks", limit: 255
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.varchar "ref_po_no", limit: 18
    t.varchar "ref_po_serial_no", limit: 6
    t.decimal "total_pallet_required", precision: 16, scale: 3
    t.datetime "expiry_date", precision: nil
    t.varchar "po_barcode", limit: 25
    t.index ["purchase_receive_id", "trans_flag"], name: "IX_purchase_receive_lines"
  end

  create_table "purchase_receives", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_shipping_code", limit: 25
    t.datetime "ref_ship_date", precision: nil
    t.varchar "ref_type", limit: 1
    t.varchar "tracking_no", limit: 50
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "account_period_code", limit: 8, null: false
    t.varchar "term_code", limit: 25
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 3, default: 0.0
    t.varchar "remarks", limit: 255
    t.integer "store_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "total_pallet_required", precision: 16, scale: 3
    t.varchar "location_code", limit: 25
    t.integer "location_id"
  end

  create_table "purchasepeople", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "phone1", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "updated_by_code", limit: 25
  end

  create_table "qb_customer_list", id: false, force: :cascade do |t|
    t.string "Customer", limit: 255
    t.string "Company", limit: 255
    t.string "First Name", limit: 255
    t.string "Last Name", limit: 255
    t.string "Main Phone", limit: 255
    t.string "Fax", limit: 255
    t.string "Alt# Phone", limit: 255
    t.string "Secondary Contact", limit: 255
    t.string "Job Title", limit: 255
    t.string "Main Email", limit: 255
    t.string "Bill to 1", limit: 255
    t.string "Bill to 2", limit: 255
    t.string "Bill to 3", limit: 255
    t.string "Bill to 4", limit: 255
    t.string "Bill to 5", limit: 255
    t.string "Ship to 1", limit: 255
    t.string "Ship to 2", limit: 255
    t.string "Ship to 3", limit: 255
    t.string "Ship to 4", limit: 255
    t.string "Ship to 5", limit: 255
    t.string "Terms", limit: 255
    t.string "Rep", limit: 255
    t.float "Account No#"
  end

  create_table "queries", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "table_name", limit: 30
    t.integer "sales_order_id"
    t.datetime "date_added", precision: nil
    t.varchar "subject", limit: 100
    t.varchar "question", limit: 1000
    t.varchar "answer", limit: 2000
    t.varchar "query_category", limit: 50
    t.varchar "answer_flag", limit: 1, default: "N"
    t.varchar "serial_no", limit: 6
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "query_type", limit: 50
    t.varchar "trans_bk", limit: 6
    t.varchar "answered_by_code", limit: 50
    t.datetime "answered_date", precision: nil
    t.index ["sales_order_id"], name: "idx_queries_sales_order_id"
  end

  create_table "rack_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.integer "warehouse_id"
  end

  create_table "reasons", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "reason", limit: 200
    t.varchar "reason_type", limit: 100
  end

  create_table "received_emails", id: :integer, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "created_by"
    t.integer "updated_by"
    t.integer "lock_version", default: 0
    t.char "trans_flag", limit: 1, default: "A"
    t.char "update_flag", limit: 1, default: "V"
    t.varchar_max "email_message_id"
    t.integer "email_uid"
    t.datetime "received_at", precision: nil
    t.varchar_max "email_from"
    t.varchar_max "email_to"
    t.varchar_max "email_cc"
    t.varchar_max "email_subject"
    t.text "email_text_body"
    t.varchar_max "attachments"
    t.integer "xpriority"
    t.varchar_max "keywords"
    t.varchar_max "in_reply_to"
    t.varchar "thread_index", limit: 30
    t.integer "task_id"
    t.char "processed_flag", limit: 1, default: "N"
  end

  create_table "registered_machines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "name", limit: 100
    t.varchar "description", limit: 255
    t.varchar "machine_encrypted_code", limit: 200
    t.varchar "approve_flag", limit: 1, default: "N"
  end

  create_table "report_addons", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "report_id", null: false
    t.varchar "report_code", limit: 25
    t.varchar "service_url", limit: 500
    t.varchar "default_yn", limit: 1
    t.integer "addon_report_id"
    t.varchar "addon_report_code", limit: 25
    t.varchar "name", limit: 50
    t.varchar "serial_no", limit: 6
  end

  create_table "report_columns", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "report_id", null: false
    t.varchar "column_name", limit: 50
    t.varchar "column_label", limit: 100
    t.varchar "column_datatype", limit: 4
    t.varchar "column_textalign", limit: 1, default: "L"
    t.integer "column_width"
    t.varchar "sortdatatype", limit: 4
    t.varchar "isgroupable", limit: 1, default: "N"
    t.varchar "isdrilldowncolumn", limit: 1, default: "N"
    t.integer "column_precision"
    t.integer "print_width"
    t.varchar "drilldown_component_code", limit: 100
    t.varchar "isfixedurl", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
    t.index ["company_id", "report_id"], name: "report_columns_company_id_report_id"
  end

  create_table "report_fixed_formats", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "report_id"
    t.varchar "name", limit: 50
    t.varchar "component_name", limit: 100
    t.index ["report_id"], name: "idx_report_fixed_formats_rept_id"
  end

  create_table "report_layout_columns", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "report_layout_id", null: false
    t.integer "report_column_id", null: false
    t.varchar "isgroup", limit: 1, default: "N"
    t.integer "group_level"
    t.varchar "istotal", limit: 1, default: "N"
    t.varchar "isvisible", limit: 1, default: "Y"
    t.integer "sort_sequence"
    t.integer "column_sequence"
    t.integer "print_width"
    t.varchar "updated_by_code", limit: 25
    t.index ["company_id", "report_layout_id"], name: "report_layout_columns_company_id_report_layout_id"
  end

  create_table "report_layout_users", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "report_layout_id", null: false
    t.integer "user_id", null: false
    t.varchar "default_yn", limit: 1, default: "N"
    t.varchar "updated_by_code", limit: 25
  end

  create_table "report_layouts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "report_id", null: false
    t.varchar "layout_type", limit: 1, default: "U"
    t.varchar "name", limit: 50
    t.varchar "print_orientation", limit: 1, default: "P"
    t.integer "lockedcolumncount", default: 0
    t.varchar "updated_by_code", limit: 25
    t.index ["company_id", "report_id"], name: "report_layouts_company_id_report_id"
  end

  create_table "reports", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25
    t.varchar "name", limit: 50
    t.varchar "description", limit: 100
    t.integer "document_id", null: false
    t.varchar "service_url", limit: 500
    t.varchar "drilldown_component_code", limit: 100
    t.varchar "isdrilldownrow", limit: 1, default: "N"
    t.varchar "isfixedurl", limit: 1, default: "N"
    t.varchar "document_path", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_reports", unique: true
  end

  create_table "role_permissions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "role_id", null: false
    t.integer "document_id", null: false
    t.integer "menu_id", null: false
    t.integer "moodule_id", null: false
    t.varchar "create_permission", limit: 1, default: "N", null: false
    t.varchar "modify_permission", limit: 1, default: "N", null: false
    t.varchar "view_permission", limit: 1, default: "N", null: false
    t.varchar "role_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["role_id"], name: "idx_role_permissions_rold_id"
  end

  create_table "roles", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "role_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["code"], name: "idx_roles_code", unique: true
  end

  create_table "sage_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sage_category_id"
    t.varchar "name", limit: 100
  end

  create_table "sage_order_status_types", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sage_status_id", null: false
    t.varchar "sage_status_name", limit: 256
    t.varchar "sage_description", limit: 1024
    t.varchar "promoflow_workflow_location", limit: 50
    t.varchar "additional_explanation", limit: 2014
    t.varchar "response_required", limit: 5
  end

  create_table "sales_commission_configurations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.datetime "start_date", precision: nil, null: false
    t.datetime "end_date", precision: nil, null: false
    t.varchar "territory_code", limit: 25, default: "ALL"
    t.varchar "price_level", limit: 10, default: "ALL"
    t.varchar "salesperson_code", limit: 25, default: "ALL"
    t.varchar "salesperson_category_code", limit: 25, default: "ALL"
    t.varchar "customer_category_code", limit: 25, default: "ALL"
    t.varchar "customer_code", limit: 25, default: "ALL"
    t.varchar "catalog_item_category_code", limit: 25, default: "ALL"
    t.varchar "catalog_item_code", limit: 25, default: "ALL"
    t.decimal "from_amt", precision: 10, scale: 2, default: 0.0
    t.decimal "to_amt", precision: 10, scale: 2, default: 0.0
    t.decimal "percentage", precision: 10, scale: 3, default: 0.0
    t.varchar "item_type", limit: 10
    t.decimal "discount_per_from", precision: 6, scale: 2
    t.decimal "discount_per_to", precision: 6, scale: 2
    t.varchar "group1", limit: 250
    t.varchar "group2", limit: 250
    t.decimal "target_amt", precision: 10, scale: 2
  end

  create_table "sales_commission_processes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.datetime "from_date", precision: nil, null: false
    t.datetime "to_date", precision: nil, null: false
    t.varchar "remarks", limit: 100
  end

  create_table "sales_commission_transaction_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_commission_transaction_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000, null: false
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "salesperson_code", limit: 25, null: false
    t.decimal "salesperson_share_per", precision: 12, scale: 2, default: 0.0
    t.decimal "salesperson_share_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "commission_per", precision: 12, scale: 3, default: 0.0
    t.decimal "commission_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "updated_by_code", limit: 25
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "process_type", limit: 1
    t.index ["sales_commission_transaction_id"], name: "idx_sales_comm_trns_lns_sls_comm_trns_id"
  end

  create_table "sales_commission_transactions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "trans_type", limit: 1
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_type", limit: 1
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8, null: false
    t.integer "customer_id", null: false
    t.varchar "customer_code", limit: 25
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "commission_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "territory", limit: 25
    t.varchar "receipt_trans_bk", limit: 4
    t.varchar "receipt_trans_no", limit: 18
    t.datetime "receipt_trans_date", precision: nil
  end

  create_table "sales_commissions", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.integer "salesperson_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "commission_type", limit: 25
    t.integer "order_id"
    t.decimal "percent", precision: 5, scale: 2
    t.decimal "amount", precision: 5, scale: 2
    t.varchar "commission_status", limit: 25
    t.datetime "earned_at", precision: nil
    t.integer "paid_invoice_id"
    t.integer "candi_id"
    t.index ["salesperson_id", "salesperson_code"], name: "idx_sales_comm_salesperson_id_code"
  end

  create_table "sales_credit_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_credit_invoice_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.varchar "post_flag", limit: 1
    t.decimal "purchase_price", precision: 12, scale: 2
    t.index ["sales_credit_invoice_id"], name: "idx_sales_credit_invoice_lines_sales_credit_invoice_id"
  end

  create_table "sales_credit_invoice_salespeople", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_credit_invoice_id"
    t.varchar "serial_no", limit: 6
    t.integer "salesperson_id"
    t.decimal "share_per", precision: 10, scale: 2, default: 0.0
    t.varchar "salesperson_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["sales_credit_invoice_id"], name: "idx_sales_credit_inoice_id"
  end

  create_table "sales_credit_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 3, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.varchar "territory", limit: 25
    t.varchar "reason_code", limit: 100
    t.index ["company_id", "trans_no"], name: "sales_credit_invoices_company_id_trans_no"
  end

  create_table "sales_credit_reasons", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 100
    t.varchar "name", limit: 100
    t.varchar "inventory_post_flag", limit: 1
  end

  create_table "sales_invoice_imports", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "account_number", limit: 20
    t.varchar "invoice_number", limit: 18
    t.datetime "invoice_date", precision: nil
    t.varchar "tracking_number", limit: 50
    t.varchar "original_address", limit: 200
    t.varchar "corrected_address", limit: 200
    t.varchar "reference_number_1", limit: 100
    t.varchar "sales_order_number", limit: 18
    t.varchar "customer_code", limit: 25
    t.decimal "published_charge", precision: 12, scale: 2
  end

  create_table "sales_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_invoice_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "multi_description", limit: 500
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.decimal "purchase_price", precision: 12, scale: 2
    t.varchar "ship_trans_bk", limit: 4
    t.varchar "ship_trans_no", limit: 18
    t.datetime "ship_trans_date", precision: nil
    t.varchar "tracking_no", limit: 50
    t.index ["sales_invoice_id"], name: "idx_sales_invoice_lines_sales_invoice_id"
  end

  create_table "sales_invoice_salespeople", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_invoice_id"
    t.varchar "serial_no", limit: 6
    t.integer "salesperson_id"
    t.decimal "share_per", precision: 12, scale: 2, default: 0.0
    t.varchar "salesperson_code", limit: 25
    t.varchar "updated_by_code", limit: 25
  end

  create_table "sales_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 12, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "billed_flag", limit: 1, default: "N"
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "customer_ship_code", limit: 25
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.varchar "territory", limit: 25
    t.varchar "salt", limit: 40
    t.varchar "shipping_remarks", limit: 255
    t.varchar "ship_trans_bk", limit: 4
    t.varchar "ship_trans_no", limit: 18
    t.datetime "ship_trans_date", precision: nil
    t.varchar "ship_attention", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.integer "buying_group_id"
    t.varchar "buying_group_code", limit: 25
    t.integer "buying_group2_id"
    t.varchar "buying_group2_code", limit: 25
    t.integer "parent_id"
    t.varchar "parent_code", limit: 25
    t.varchar_max "invoice_url"
    t.index ["company_id", "trans_bk", "trans_no"], name: "idx_sales_invoices_company_id_trans_bk_trans_no", unique: true
    t.index ["company_id", "trans_no"], name: "sales_invoices_company_id_trans_no"
    t.index ["ref_trans_no"], name: "ix_sales_invoices_ref_trans_no"
    t.index ["trans_flag", "trans_date"], name: "sales_invoices_trans_flag_trans_date"
  end

  create_table "sales_memo_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_memo_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 2, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.varchar "customer_sku_no", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.varchar "is_unique_item", limit: 1, default: "N"
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 25
    t.varchar "metal_type", limit: 10
    t.decimal "gold_wt", precision: 12, scale: 4, default: 0.0
    t.varchar "unit", limit: 4
    t.decimal "diamond_wt", precision: 12, scale: 4, default: 0.0
    t.varchar "mm_size", limit: 25
    t.integer "sales_order_line_allocation_id"
  end

  create_table "sales_memo_returns", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 6, scale: 2, default: 0.0
    t.decimal "clear_qty", precision: 6, scale: 2, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "memo_return_category", limit: 25
    t.varchar "bill_email", limit: 50
    t.varchar "ship_email", limit: 50
    t.decimal "duty_amt", precision: 12, scale: 2
  end

  create_table "sales_memos", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1
    t.decimal "item_qty", precision: 6, scale: 2
    t.decimal "clear_qty", precision: 6, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.decimal "tax_per", precision: 6, scale: 3
    t.decimal "item_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.decimal "insurance_per", precision: 6, scale: 2
    t.decimal "ship_per", precision: 6, scale: 2
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "taxable_amt", precision: 12, scale: 2
    t.varchar "memo_category", limit: 25
    t.varchar "bill_email", limit: 50
    t.varchar "ship_email", limit: 50
    t.decimal "duty_amt", precision: 12, scale: 2
  end

  create_table "sales_order_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "post_flag", limit: 1
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "order_status", limit: 25
    t.integer "candi_id"
  end

  create_table "sales_order_artworks", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "customer_id", limit: 6
    t.varchar "artwork_version", limit: 25
    t.varchar "artwork_file_path", limit: 250
    t.varchar "artwork_file_name", limit: 250
    t.varchar "subject", limit: 100
    t.varchar "comment", limit: 1000
    t.varchar "customer_email", limit: 200
    t.varchar "final_artwork_flag", limit: 1, default: "N"
    t.varchar "internal_comment", limit: 1000
    t.varchar "select_yn", limit: 1, default: "N"
    t.varchar "proof_file_name", limit: 250
    t.varchar "final_prodfile_flag", limit: 1
    t.char "uploaded_file_size", limit: 10
    t.char "proof_file_size", limit: 10
    t.varchar "auto_proof_file_name", limit: 250
    t.char "layout", limit: 25
    t.index ["sales_order_id", "trans_flag", "final_artwork_flag"], name: "<idx_sales_order_artworks>"
    t.index ["sales_order_id"], name: "idx_so_artworks_sales_order_id"
  end

  create_table "sales_order_attributes_multiple_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_attributes_value_id"
    t.varchar "serial_no", limit: 6
    t.varchar "value", limit: 25
    t.decimal "qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ship_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "damaged_qty", precision: 10, scale: 4, default: 0.0
    t.index ["sales_order_attributes_value_id"], name: "idx_so_attr_multi_val_so_attr_val_id"
  end

  create_table "sales_order_attributes_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id"
    t.varchar "serial_no", limit: 6
    t.datetime "trans_date", precision: nil
    t.integer "catalog_item_id"
    t.varchar "catalog_attribute_code", limit: 25
    t.integer "ref_serial_no"
    t.varchar "catalog_attribute_value_code", limit: 25
    t.varchar "remarks", limit: 500
    t.integer "sales_order_line_id", default: 0
    t.varchar "image_icon", limit: 100
    t.index ["sales_order_id", "trans_flag", "catalog_attribute_code"], name: "ix_sales_order_attributes_values_catalog_attribute_code"
    t.index ["sales_order_id"], name: "idx_so_attr_val_sales_order_id"
  end

  create_table "sales_order_cancel_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_cancel_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.index ["sales_order_cancel_id"], name: "idx_sales_order_cancel_lines_sales_order_cancel_id"
  end

  create_table "sales_order_cancels", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.index ["company_id", "trans_no"], name: "sales_order_cancels_company_id_trans_no"
  end

  create_table "sales_order_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.varchar "line_type", limit: 1
    t.varchar "option_description", limit: 1000
    t.varchar "imposition_flag", limit: 1, default: "N"
    t.varchar "print_flag", limit: 1, default: "N"
    t.varchar "film_flag", limit: 1, default: "N"
    t.varchar "stitch_flag", limit: 1, default: "N"
    t.varchar "cut_flag", limit: 1, default: "N"
    t.datetime "imposition_date", precision: nil
    t.datetime "print_date", precision: nil
    t.datetime "film_date", precision: nil
    t.datetime "stitch_date", precision: nil
    t.datetime "cut_date", precision: nil
    t.varchar "indigo_code", limit: 25
    t.varchar "send_digitization_flag", limit: 1, default: "N"
    t.integer "stitch_count"
    t.datetime "send_digitization_date", precision: nil
    t.varchar "doc_code", limit: 25
    t.varchar "blank_good_flag", limit: 1, default: "N"
    t.varchar "receive_digitization_flag", limit: 1, default: "N"
    t.datetime "receive_digitization_date", precision: nil
    t.varchar "thread_company", limit: 50
    t.varchar "thread_color", limit: 50
    t.varchar "thread_number", limit: 50
    t.varchar "reason", limit: 200
    t.varchar "print_ready_flag", limit: 1, default: "N"
    t.varchar "reject_from_imposition_flag", limit: 1, default: "N"
    t.varchar "imposition_reject_reason", limit: 500
    t.varchar "send_for_estimation_flag", limit: 1, default: "N"
    t.varchar "receive_stitch_estimation_flag", limit: 1, default: "N"
    t.varchar "customer_stitch_approval_flag", limit: 1, default: "N"
    t.datetime "send_for_estimation_date", precision: nil
    t.datetime "receive_stitch_estimation_date", precision: nil
    t.datetime "customer_stitch_approval_date", precision: nil
    t.varchar "missing_info_description", limit: 1000
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "direct_production_flag", limit: 1, default: "N"
    t.varchar "location_code", limit: 25
    t.integer "location_id"
    t.integer "no_of_frames", default: 0
    t.decimal "current_clear_qty", precision: 10, scale: 4
    t.datetime "ship_date", precision: nil
    t.integer "collection_id"
    t.integer "line_sheet_id"
    t.decimal "reprint_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "sublimation_flag", limit: 1, default: "N"
    t.date "sublimation_date"
    t.varchar "ship_to_vendor_flag", limit: 1, default: "N"
    t.varchar "vendor_shipment_tracking_no", limit: 100
    t.varchar "po_confirmation_flag", limit: 1, default: "N"
    t.varchar "label_received_flag", limit: 1, default: "N"
    t.integer "parent_item_id"
    t.varchar "parent_item_code", limit: 25
    t.varchar "is_manually_added", limit: 1, default: "N"
    t.varchar "production_pick_flag", limit: 1, default: "N"
    t.varchar "move_to_outsource", limit: 1, default: "N"
    t.varchar "roll_no", limit: 25
    t.varchar "sublimation_art_ready", limit: 1, default: "N"
    t.varchar "rip_flag", limit: 1
    t.varchar "lot_no", limit: 200
    t.varchar "roll_lot_no", limit: 25
    t.decimal "item_master_price", precision: 12, scale: 3
    t.decimal "shipped_qty", precision: 12, scale: 4, default: 0.0
    t.varchar "imposition_file_type", limit: 50
    t.char "art_replaced_flag", limit: 1
    t.varchar "workflow", limit: 100
    t.char "pick_slip_print", limit: 1, default: "N"
    t.varchar "inventory_status", limit: 500
    t.varchar "imprint_type", limit: 25
    t.varchar "decal_type", limit: 25
    t.varchar "imprint_color1", limit: 50
    t.varchar "imprint_color2", limit: 50
    t.varchar "imprint_color3", limit: 50
    t.varchar "product_size", limit: 25
    t.varchar "product_shape", limit: 25
    t.varchar "product_color_flavor", limit: 150
    t.varchar "imprint_type_remark", limit: 500
    t.index ["company_id", "trans_date", "id"], name: "<sales_order_lines_ix_102, sysname,>"
    t.index ["sales_order_id", "item_type", "trans_flag"], name: "idx_sales_ordeR_lines_sales_order_id_item_type"
    t.index ["sales_order_id"], name: "idx_sales_order_lines_sales_order_id"
    t.index ["trans_flag", "catalog_item_code"], name: "ix_sales_order_lines_7"
    t.index ["trans_flag", "catalog_item_id", "item_type"], name: "IX_SOLines"
    t.index ["trans_flag", "item_type", "blank_good_flag"], name: "IX_SOLines_1"
  end

  create_table "sales_order_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "updated_by_code", limit: 25
    t.varchar "location_code", limit: 255
    t.integer "location_id"
    t.decimal "item_qty", precision: 10, scale: 4
    t.integer "sales_order_id"
    t.varchar "catalog_item_code", limit: 25
    t.integer "catalog_item_id"
    t.varchar "serial_no", limit: 6
    t.datetime "expiry_date", precision: nil
  end

  create_table "sales_order_notifications", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.char "notification_type", limit: 25
    t.char "trigger_event", limit: 50
    t.char "Subject", limit: 50
    t.varchar "message", limit: 500
    t.varchar "sender", limit: 100
    t.varchar "recipients", limit: 100
  end

  create_table "sales_order_purchases", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.integer "purchase_order_id", null: false
    t.varchar "purchase_order_trans_no", limit: 18, null: false
    t.datetime "purchase_order_trans_date", precision: nil, null: false
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "vendor_name", limit: 100
    t.char "is_main_po_flag", limit: 1, default: "N"
  end

  create_table "sales_order_ready_to_invoice", id: false, force: :cascade do |t|
    t.varchar "trans_no", limit: 18, null: false
  end

  create_table "sales_order_receipts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "post_flag", limit: 1
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.integer "sales_order_id"
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "salesperson_code", limit: 25
    t.decimal "advance_per", precision: 5, scale: 2
    t.decimal "received_amt", precision: 12, scale: 2
    t.varchar "description", limit: 50
    t.varchar "receipt_method", limit: 100
    t.varchar "response_code", limit: 100
    t.varchar "avs_response", limit: 25
    t.varchar "receipt_status", limit: 25
    t.integer "bank_id"
    t.datetime "check_date", precision: nil
    t.varchar "check_no", limit: 15
    t.varchar "cc_type", limit: 25
    t.varchar "cc_name", limit: 100
    t.varchar "cc_month", limit: 2
    t.varchar "cc_year", limit: 4
    t.varchar "cc_four_digit", limit: 4
    t.varchar "gateway_customer_profile_id", limit: 50
    t.varchar "gateway_payment_profile_id", limit: 50
    t.integer "candi_id"
  end

  create_table "sales_order_shipments", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sales_order_id", null: false
    t.integer "sales_order_shipping_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.datetime "inhand_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "shipping_code", limit: 25
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_code", limit: 100
    t.decimal "ship_qty", precision: 10, scale: 4
    t.decimal "damaged_qty", precision: 10, scale: 4
    t.decimal "ship_amt", precision: 12, scale: 2
    t.varchar "invoiced_flag", limit: 1
    t.varchar "multi_description", limit: 500
    t.varchar "tracking_no", limit: 100
    t.integer "location_id"
    t.varchar "location_code", limit: 25
    t.varchar "damaged_qty_description", limit: 500
    t.varchar "trans_no", limit: 18
    t.varchar "trans_bk", limit: 4
    t.datetime "trans_date", precision: nil
    t.decimal "clear_qty", precision: 10, scale: 4
    t.varchar "ship_ref1", limit: 50
    t.varchar "ship_ref2", limit: 50
    t.varchar "pallet_no", limit: 25
    t.varchar "label_file_name", limit: 100
    t.varchar "comm_invoice_file_name", limit: 200
    t.varchar "fob", limit: 25
    t.varchar "fob_code", limit: 25
    t.integer "fob_value"
    t.varchar "attention", limit: 50
    t.varchar "shipping_serial_no", limit: 6, default: ""
    t.char "four51_ship_notice_flag", limit: 1, default: "N"
    t.integer "four51_ship_notice_attempts", default: 0
    t.index ["sales_order_id"], name: "idx_sales_order_shipments_sales_order_id"
    t.index ["sales_order_shipping_id"], name: "idx_sales_order_shipments_sales_order_shipping_id"
    t.index ["trans_bk", "trans_no"], name: "idx_sales_order_shipments_trans_bk_trans_no", unique: true
  end

  create_table "sales_order_shipments_20221205", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sales_order_id", null: false
    t.integer "sales_order_shipping_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.datetime "inhand_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "shipping_code", limit: 25
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_code", limit: 100
    t.decimal "ship_qty", precision: 10, scale: 4
    t.decimal "damaged_qty", precision: 10, scale: 4
    t.decimal "ship_amt", precision: 12, scale: 2
    t.varchar "invoiced_flag", limit: 1
    t.varchar "multi_description", limit: 500
    t.varchar "tracking_no", limit: 100
    t.integer "location_id"
    t.varchar "location_code", limit: 25
    t.varchar "damaged_qty_description", limit: 500
    t.varchar "trans_no", limit: 18
    t.varchar "trans_bk", limit: 4
    t.datetime "trans_date", precision: nil
    t.decimal "clear_qty", precision: 10, scale: 4
    t.varchar "ship_ref1", limit: 50
    t.varchar "ship_ref2", limit: 50
    t.varchar "pallet_no", limit: 25
    t.varchar "label_file_name", limit: 100
    t.varchar "comm_invoice_file_name", limit: 200
    t.varchar "fob", limit: 25
    t.varchar "fob_code", limit: 25
    t.integer "fob_value"
    t.varchar "attention", limit: 50
    t.varchar "shipping_serial_no", limit: 6
    t.char "four51_ship_notice_flag", limit: 1
    t.integer "four51_ship_notice_attempts"
  end

  create_table "sales_order_shipments_trans_no_update", id: :integer, force: :cascade do |t|
    t.varchar "trans_no", limit: 18
    t.bigint "new_trans_no"
    t.integer "sales_order_id", null: false
  end

  create_table "sales_order_shipping_attributes_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id"
    t.integer "sales_order_shipping_id", default: 0
    t.varchar "serial_no", limit: 6
    t.datetime "trans_date", precision: nil
    t.integer "catalog_item_id"
    t.varchar "catalog_attribute_code", limit: 25
    t.integer "ref_serial_no"
    t.varchar "catalog_attribute_value_code", limit: 25
    t.varchar "remarks", limit: 500
    t.varchar "image_icon", limit: 100
  end

  create_table "sales_order_shipping_packages", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "serial_no", limit: 6
    t.integer "sales_order_shipping_id", null: false
    t.decimal "carton_length", precision: 10, scale: 2
    t.decimal "carton_width", precision: 10, scale: 2
    t.decimal "carton_height", precision: 10, scale: 2
    t.decimal "carton_wt", precision: 12, scale: 2
    t.decimal "pcs_per_carton", precision: 12, scale: 2
    t.varchar "tracking_no", limit: 50
    t.integer "sales_order_shipment_id"
    t.varchar "wt_unit", limit: 25
    t.decimal "insured_value", precision: 12, scale: 3, default: 1.0
    t.varchar "package_remark", limit: 100
    t.index ["sales_order_shipping_id"], name: "idx_so_ship_pkg_so_ship_id"
    t.index ["trans_flag", "update_flag"], name: "idx_sales_order_shipping_packages_trans_flag, sysname,>"
  end

  create_table "sales_order_shipping_truck_packages", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "serial_no", limit: 6
    t.integer "sales_order_shipping_id", null: false
    t.varchar "package_type", limit: 25
    t.integer "package_length"
    t.integer "package_width"
    t.integer "package_height"
    t.decimal "package_wt", precision: 12, scale: 2, default: 0.0
    t.integer "no_of_boxes", default: 0
    t.varchar "freight_class", limit: 5
    t.varchar "hm_dg_flag", limit: 1, default: "N"
    t.decimal "total_pallet_wt", precision: 12, scale: 2, default: 0.0
    t.decimal "price", precision: 12, scale: 3, default: 0.0
    t.index ["sales_order_shipping_id"], name: "idx_so_ship_truck_pckg_so_ship_id"
  end

  create_table "sales_order_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.decimal "ship_qty", precision: 10, scale: 4
    t.integer "customer_shipping_id"
    t.varchar "shipping_code", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_description", limit: 200
    t.datetime "estimated_ship_date", precision: nil
    t.varchar "shipvia_accountnumber", limit: 25
    t.varchar "packaging_flag", limit: 1, default: "N"
    t.datetime "packaging_date", precision: nil
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "shipping_flag", limit: 1, default: "N"
    t.datetime "shipping_date", precision: nil
    t.datetime "inhand_date", precision: nil
    t.datetime "estimated_arrival_date", precision: nil
    t.varchar "attention", limit: 50
    t.varchar "invoiced_flag", limit: 1, default: "N"
    t.datetime "internal_ship_date", precision: nil
    t.datetime "internal_inhand_date", precision: nil
    t.varchar "pre_prod_flag", limit: 1, default: "N"
    t.varchar "tracking_no", limit: 50
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "ship_to_vendor_flag", limit: 1, default: "N"
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "damaged_qty", precision: 10, scale: 4
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "ship_method_code", limit: 100
    t.varchar "po_confirmation_flag", limit: 1, default: "N"
    t.varchar "label_received_flag", limit: 1, default: "N"
    t.varchar "multi_description", limit: 500
    t.decimal "clear_ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "generate_new_label_flag", limit: 1, default: "Y"
    t.decimal "current_ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "damaged_qty_description", limit: 500
    t.varchar "fob", limit: 25, default: ""
    t.integer "fob_value"
    t.varchar "remarks", limit: 255
    t.varchar "residential_indicator", limit: 1
    t.varchar "manual_shipping", limit: 1
    t.varchar "pallet_no", limit: 25
    t.varchar "fob_code", limit: 25
    t.varchar "ship_ref1", limit: 50
    t.varchar "ship_ref2", limit: 50
    t.varchar "ship_ref3", limit: 50
    t.varchar "saturday_delivery_flag", limit: 1, default: "N"
    t.varchar "label_file_name", limit: 100
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.varchar "comm_invoice_file_name", limit: 200
    t.char "donot_ship_early", limit: 1, default: "N"
    t.varchar "endicia_package_type", limit: 100
    t.char "insurance_flag", limit: 1, default: "N"
    t.varchar "shipping_import_remark", limit: 500
    t.varchar "po_no", limit: 18
    t.datetime "po_arrival_date", precision: nil
    t.varchar "po_serial_no", limit: 6
    t.decimal "insurance_amt", precision: 10, scale: 2
    t.decimal "negotiated_amt", precision: 10, scale: 2
    t.decimal "markup_amt", precision: 10, scale: 2
    t.varchar "shipping_item_desc", limit: 1000
    t.varchar "is_address_validated", limit: 1, default: "N"
    t.char "is_customer_packing_slip", limit: 1
    t.varchar "customer_packing_slip_file_path", limit: 250
    t.varchar "customer_packing_slip_file_name", limit: 250
    t.varchar "special_packaging", limit: 100
    t.varchar "signature_required", limit: 1
    t.varchar "production_capacity_ignorance_reason", limit: 500
    t.varchar "production_capacity_timestamp", limit: 25
    t.index ["po_no", "po_serial_no"], name: "idex_sales_order_shippings_po_no"
    t.index ["sales_order_id"], name: "idx_so_shippings_sales_order_id"
    t.index ["trans_flag"], name: "idx_sales_order_shippings_trans_flag"
  end

  create_table "sales_order_shippings_20231009", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "sales_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.decimal "ship_qty", precision: 10, scale: 4
    t.integer "customer_shipping_id"
    t.varchar "shipping_code", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_description", limit: 200
    t.datetime "estimated_ship_date", precision: nil
    t.varchar "shipvia_accountnumber", limit: 25
    t.varchar "packaging_flag", limit: 1
    t.datetime "packaging_date", precision: nil
    t.decimal "ship_amt", precision: 12, scale: 2
    t.varchar "shipping_flag", limit: 1
    t.datetime "shipping_date", precision: nil
    t.datetime "inhand_date", precision: nil
    t.datetime "estimated_arrival_date", precision: nil
    t.varchar "attention", limit: 50
    t.varchar "invoiced_flag", limit: 1
    t.datetime "internal_ship_date", precision: nil
    t.datetime "internal_inhand_date", precision: nil
    t.varchar "pre_prod_flag", limit: 1
    t.varchar "tracking_no", limit: 50
    t.decimal "clear_qty", precision: 10, scale: 4
    t.varchar "ship_to_vendor_flag", limit: 1
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "damaged_qty", precision: 10, scale: 4
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "ship_method_code", limit: 100
    t.varchar "po_confirmation_flag", limit: 1
    t.varchar "label_received_flag", limit: 1
    t.varchar "multi_description", limit: 500
    t.decimal "clear_ship_amt", precision: 12, scale: 2
    t.varchar "generate_new_label_flag", limit: 1
    t.decimal "current_ship_amt", precision: 12, scale: 2
    t.varchar "damaged_qty_description", limit: 500
    t.varchar "fob", limit: 25
    t.integer "fob_value"
    t.varchar "remarks", limit: 255
    t.varchar "residential_indicator", limit: 1
    t.varchar "manual_shipping", limit: 1
    t.varchar "pallet_no", limit: 25
    t.varchar "fob_code", limit: 25
    t.varchar "ship_ref1", limit: 50
    t.varchar "ship_ref2", limit: 50
    t.varchar "ship_ref3", limit: 50
    t.varchar "saturday_delivery_flag", limit: 1
    t.varchar "label_file_name", limit: 100
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.varchar "comm_invoice_file_name", limit: 200
    t.char "donot_ship_early", limit: 1
    t.varchar "endicia_package_type", limit: 100
    t.char "insurance_flag", limit: 1
    t.varchar "shipping_import_remark", limit: 500
    t.varchar "po_no", limit: 18
    t.datetime "po_arrival_date", precision: nil
    t.varchar "po_serial_no", limit: 6
    t.decimal "insurance_amt", precision: 10, scale: 2
    t.decimal "negotiated_amt", precision: 10, scale: 2
    t.decimal "markup_amt", precision: 10, scale: 2
    t.varchar "shipping_item_desc", limit: 1000
    t.varchar "is_address_validated", limit: 1
    t.char "is_customer_packing_slip", limit: 1
    t.varchar "customer_packing_slip_file_path", limit: 250
    t.varchar "customer_packing_slip_file_name", limit: 250
    t.varchar "special_packaging", limit: 100
    t.varchar "signature_required", limit: 1
  end

  create_table "sales_order_threads", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "thread_company", limit: 50
    t.varchar "color_number", limit: 50
    t.varchar "color_card_sequence", limit: 50
    t.varchar "thread_category", limit: 50
    t.index ["sales_order_id"], name: "idx_so_threads_sales_order_id"
  end

  create_table "sales_order_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.datetime "activity_date", precision: nil
    t.string "sales_order_stage_code", limit: 200
    t.varchar "remarks", limit: 500
    t.integer "user_id"
    t.integer "sequence_no"
    t.varchar "duration", limit: 20
    t.index ["sales_order_id"], name: "idx_so_trns_actvs_so_order_id"
  end

  create_table "sales_order_vendor_shipping_packages", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "serial_no", limit: 6
    t.integer "sales_order_vendor_shipping_id", null: false
    t.decimal "carton_length", precision: 12, scale: 2
    t.decimal "carton_width", precision: 12, scale: 2
    t.decimal "carton_height", precision: 12, scale: 2
    t.decimal "carton_wt", precision: 12, scale: 2
    t.varchar "tracking_no", limit: 50
    t.decimal "insured_value", precision: 12, scale: 3, default: 1.0
    t.varchar "wt_unit", limit: 25
    t.index ["sales_order_vendor_shipping_id"], name: "idx_so_vend_ship_pckg_so_vend_ship_id"
  end

  create_table "sales_order_vendor_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_order_id", null: false
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "tracking_no", limit: 50
    t.varchar "po_no", limit: 50
    t.varchar "item_description", limit: 50
    t.varchar "ship_method_code", limit: 25
    t.index ["sales_order_id"], name: "idx_so_vend_ship_so_vendor_id"
  end

  create_table "sales_orders", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 500
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "account_dept_email", limit: 500
    t.varchar "artwork_dept_email", limit: 500
    t.varchar "corr_dept_email", limit: 500
    t.varchar "purchase_dept_email", limit: 500
    t.varchar "shipping_dept_email", limit: 500
    t.varchar "credit_card_no", limit: 25
    t.varchar "card_type", limit: 25
    t.varchar "name_on_card", limit: 50
    t.integer "expiration_month"
    t.integer "expiration_year"
    t.varchar "promotional_code", limit: 50
    t.varchar "artwork_version", limit: 50
    t.datetime "inhand_date", precision: nil
    t.varchar "paper_proof_flag", limit: 1, default: "N"
    t.varchar "paper_proof_status", limit: 50
    t.varchar "accounting_status", limit: 50
    t.varchar "customer_contact", limit: 50
    t.varchar "customer_phone", limit: 50
    t.varchar "cvv_number", limit: 10
    t.varchar "shipvia_accountnumber", limit: 25
    t.varchar "shipping_status", limit: 50
    t.varchar "orderpickstatus_flag", limit: 1, default: "N"
    t.varchar "ordercompletestatus_flag", limit: 1, default: "N"
    t.varchar "orderqcstatus_flag", limit: 1, default: "N"
    t.varchar "ordercancelstatus_flag", limit: 1, default: "N"
    t.varchar "artworkattached_flag", limit: 1, default: "N"
    t.varchar "order_status", limit: 50
    t.varchar "orderentrycomplete_flag", limit: 1, default: "N"
    t.varchar "custpoattached_flag", limit: 1, default: "N"
    t.varchar "orderacksent_flag", limit: 1, default: "N"
    t.varchar "custapproveack_flag", limit: 1, default: "N"
    t.varchar "accountreviewed_flag", limit: 1, default: "N"
    t.varchar "shipdatereviewed_flag", limit: 1, default: "N"
    t.varchar "shipped_flag", limit: 1, default: "N"
    t.varchar "invoiced_flag", limit: 1, default: "N"
    t.varchar "artwork_status", limit: 50
    t.varchar "payment_status", limit: 50
    t.varchar "acknowledgment_status", limit: 50
    t.varchar "wip_flag", limit: 1, default: "N"
    t.varchar "artworkreceived_flag", limit: 1, default: "N"
    t.varchar "artworkassigned_flag", limit: 1, default: "N"
    t.varchar "artworkcompleted_flag", limit: 1, default: "N"
    t.varchar "artworkreviewed_flag", limit: 1, default: "N"
    t.varchar "artworksenttocust_flag", limit: 1, default: "N"
    t.varchar "artworkapprovedbycust_flag", limit: 1, default: ""
    t.integer "artworkassignedtouser_id", default: 0
    t.integer "orderassignedtouser_id", default: 0
    t.varchar "logo_name", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_description", limit: 200
    t.varchar "firstpaperproofreminder", limit: 1, default: "N"
    t.varchar "secondpaperproofreminder", limit: 1, default: "N"
    t.datetime "paperproofsenttocust_date", precision: nil
    t.datetime "firstpaperproofreminder_date", precision: nil
    t.datetime "secondpaperproofreminder_date", precision: nil
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "inventory_status", limit: 500
    t.varchar "orderreassigned_flag", limit: 1, default: "N"
    t.datetime "estimated_ship_date", precision: nil
    t.varchar "hold_order_flag", limit: 1, default: "N"
    t.varchar "hold_order_reason", limit: 200
    t.varchar "rushorder_flag", limit: 1, default: "N"
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "reorder_type", limit: 25
    t.varchar "quick_order_flag", limit: 1, default: "N"
    t.varchar "qc_off_flag", limit: 1, default: "N"
    t.varchar "ref_cust_po_no", limit: 50
    t.varchar "missing_order_info", limit: 2000
    t.varchar "cancel_order_reason", limit: 200
    t.integer "ref_virtual_line_id"
    t.varchar "approve_spec_order_flag", limit: 1, default: "N"
    t.varchar "recommendation", limit: 500
    t.varchar "rush_order_type", limit: 50
    t.varchar "payment_authorize_flag", limit: 1, default: "N"
    t.varchar "payment_capture_flag", limit: 1, default: "N"
    t.varchar "next_day_flag", limit: 1, default: "N"
    t.varchar "artwork_comment", limit: 1000
    t.varchar "artwork_internal_comment", limit: 1000
    t.varchar "artwork_customer_email", limit: 500
    t.varchar "artwork_subject", limit: 50
    t.varchar "customer_artwork_reject_reason", limit: 500
    t.varchar "payment_result", limit: 500
    t.varchar "customer_code", limit: 25
    t.varchar "orderassignedtouser_code", limit: 25
    t.varchar "artworkassignedtouser_code", limit: 25
    t.varchar "special_instructions", limit: 500
    t.varchar "customer_stitch_reject_reason", limit: 500
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "shipment_status", limit: 50
    t.varchar "order_category", limit: 50
    t.varchar "discount_amt_type", limit: 100
    t.varchar "tax_amt_type", limit: 100
    t.varchar "other_amt_type", limit: 100
    t.varchar "insurance_amt_type", limit: 100
    t.varchar "ship_amt_type", limit: 100
    t.varchar "customer_shipping_code", limit: 25
    t.varchar "order_flagged", limit: 1, default: "N"
    t.varchar "do_not_change_ship_date", limit: 1, default: "N"
    t.varchar "first_rushorder_pp_reminder_flag", limit: 1, default: "N"
    t.varchar "second_rushorder_pp_reminder_flag", limit: 1, default: "N"
    t.varchar "third_rushorder_pp_reminder_flag", limit: 1, default: "N"
    t.varchar "fourth_rushorder_pp_reminder_flag", limit: 1, default: "N"
    t.varchar "fifth_rushorder_pp_reminder_flag", limit: 1, default: "N"
    t.varchar "payment_release_flag", limit: 1, default: "N"
    t.varchar "security_question", limit: 500
    t.varchar "security_answer", limit: 1000
    t.varchar "salt", limit: 40
    t.varchar "workflow_location", limit: 50
    t.varchar "finished_product_image", limit: 100
    t.varchar "customer_checked_flag", limit: 1, default: "N"
    t.varchar "contact_checked_flag", limit: 1, default: "N"
    t.varchar "item_checked_flag", limit: 1, default: "N"
    t.varchar "quantity_checked_flag", limit: 1, default: "N"
    t.varchar "imprint_checked_flag", limit: 1, default: "N"
    t.varchar "shipping_checked_flag", limit: 1, default: "N"
    t.varchar "billing_checked_flag", limit: 1, default: "N"
    t.varchar "email_checked_flag", limit: 1, default: "N"
    t.varchar "payment_checked_flag", limit: 1, default: "N"
    t.varchar "distributed_by_text", limit: 200
    t.varchar "distributed_by_flag", limit: 1, default: "N"
    t.varchar "blank_order_flag", limit: 1, default: "N"
    t.varchar "multi_description", limit: 500
    t.varchar "coupon_code", limit: 25
    t.integer "coupon_id"
    t.varchar "sub_ref_type", limit: 1, default: "M"
    t.varchar "sub_ref_no", limit: 18
    t.varchar "suborder_multi_flavor_flag", limit: 1, default: "N"
    t.varchar "consignment_flag", limit: 1, default: "N"
    t.varchar "barcode", limit: 25
    t.varchar "order_writer", limit: 50
    t.varchar "email_to", limit: 200
    t.varchar "email_cc", limit: 200
    t.varchar "archive_order_flag", limit: 1
    t.varchar "old_order_no", limit: 10
    t.varchar "end_customer_email", limit: 500
    t.datetime "estimated_arrival_date", precision: nil
    t.varchar "po_no", limit: 18
    t.varchar "artwork_salt", limit: 40
    t.varchar "territory", limit: 25
    t.integer "orderassignedtovendor_id"
    t.varchar "orderassignedtovendor_code", limit: 25
    t.integer "artworkassignedtovendor_id"
    t.varchar "artworkassignedtovendor_code", limit: 25
    t.datetime "label_ship_date", precision: nil
    t.varchar "salesperson_info", limit: 250
    t.varchar "externalsalesperson_info", limit: 250
    t.integer "printingvendor_id"
    t.varchar "printingvendor_code", limit: 25
    t.varchar "customer_packing_slip", limit: 1, default: "N"
    t.varchar "main_flavor", limit: 50
    t.decimal "main_flavor_qty", precision: 10, scale: 4
    t.varchar "multi_flavor_order", limit: 1
    t.varchar "proof_error_from_vendor", limit: 250
    t.varchar "artwork_qc_assigned_flag", limit: 1, default: "N"
    t.integer "artwork_qc_assignedtouser_id"
    t.varchar "artwork_qc_assignedtouser_code", limit: 25
    t.varchar "customer_payment_profile_code", limit: 50
    t.varchar "card_number", limit: 10
    t.integer "crmb_prospect_id"
    t.varchar "crmb_prospect_code", limit: 25
    t.varchar "digitizing_vendor_code", limit: 25
    t.integer "digitizing_vendor_id"
    t.varchar "has_digitized_file", limit: 1, default: "N"
    t.char "club_shipments_flag", limit: 1, default: "N"
    t.varchar "hold_by", limit: 165
    t.decimal "customer_available_credit_limit", precision: 12, scale: 2
    t.decimal "customer_credit_limit", precision: 12, scale: 2
    t.char "laser_cut_done", limit: 1, default: "N"
    t.datetime "laser_cut_date", precision: nil
    t.char "laser_file_uploaded", limit: 1, default: "N"
    t.char "laser_etch_done", limit: 1, default: "N"
    t.datetime "laser_etch_date", precision: nil
    t.char "laser_cut_required", limit: 1, default: "N"
    t.varchar "laser_file_reject_reason", limit: 500
    t.char "insurance_flag", limit: 1
    t.datetime "orderpicked_at", precision: nil
    t.datetime "orderentrycompleted_at", precision: nil
    t.datetime "orderqced_at", precision: nil
    t.datetime "artworkassigned_at", precision: nil
    t.datetime "artworkcompleted_at", precision: nil
    t.datetime "artwork_qc_assigned_at", precision: nil
    t.datetime "artworkreviewed_at", precision: nil
    t.char "four51_sales_order_id", limit: 50
    t.varchar "po_serial_no", limit: 6
    t.string "preproduction_reject_reason", limit: 500
    t.integer "customer_contact_id"
    t.char "direct_type", limit: 25
    t.char "direct_gang_no", limit: 100
    t.integer "shopping_cart_id"
    t.integer "ecomm_sales_order_id"
    t.integer "ecomm_sales_order_line_id"
    t.integer "buying_group_id"
    t.varchar "buying_group_code", limit: 25
    t.integer "buying_group2_id"
    t.varchar "buying_group2_code", limit: 25
    t.varchar "artwork_sync_with_erp", limit: 1
    t.varchar "imprint_type", limit: 25
    t.varchar "decal_type", limit: 25
    t.varchar "imprint_color1", limit: 50
    t.varchar "imprint_color2", limit: 50
    t.varchar "imprint_color3", limit: 50
    t.varchar "product_size", limit: 25
    t.varchar "product_shape", limit: 25
    t.varchar "product_color_flavor", limit: 150
    t.varchar "imprint_type_remark", limit: 500
    t.varchar "internal_instructions", limit: 500
    t.varchar "print_status", limit: 100
    t.varchar "job_progress", limit: 100
    t.varchar "digitek_plus_type", limit: 50
    t.varchar "is_suborder_from_automation", limit: 1
    t.varchar "auto_generated_sub_order_flag", limit: 1
    t.integer "tier_index"
    t.index ["company_id", "trans_no", "trans_date", "account_period_code", "trans_type", "ext_ref_no", "logo_name", "customer_code", "sub_ref_type"], name: "sales_order_idx_101"
    t.index ["company_id", "trans_no"], name: "sales_orders_company_id_trans_no", unique: true
    t.index ["customer_id"], name: "idx_sales_orders_customer_id"
    t.index ["po_no"], name: "ix_sales_orders_po_no"
    t.index ["trans_flag", "ordercancelstatus_flag", "workflow_location", "trans_type", "hold_order_flag"], name: "sales_orders_trans_flag_4"
    t.index ["trans_flag", "sub_ref_no"], name: "sales_orders_ix_103"
    t.index ["trans_flag", "sub_ref_type", "trans_type", "ordercancelstatus_flag"], name: "IX_SO_1"
  end

  create_table "sales_proposal_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_proposal_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 100, null: false
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 2, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.integer "catalog_item_packet_id"
    t.varchar "catalog_item_packet_code", limit: 25
    t.varchar "customer_sku_no", limit: 25
    t.varchar "jewelry_design_flag", limit: 1
    t.datetime "expiry_date", precision: nil
    t.integer "catalog_item_batch_id"
    t.varchar "catalog_item_batch_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.integer "transaction_bom_id"
    t.varchar "remarks", limit: 255
    t.varchar "vendor_sku_no", limit: 25
    t.varchar "discount_type", limit: 25
    t.varchar "credit_type", limit: 25
    t.decimal "credit_amt", precision: 12, scale: 2
    t.varchar "location_code", limit: 25
    t.integer "location_id"
  end

  create_table "sales_proposals", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.decimal "insurance_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "insurance_per", precision: 6, scale: 2, default: 0.0
    t.decimal "ship_per", precision: 6, scale: 2, default: 0.0
    t.varchar "updated_by_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
  end

  create_table "sales_quotation_attributes_values", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_quotation_id"
    t.varchar "serial_no", limit: 6
    t.datetime "trans_date", precision: nil
    t.integer "catalog_item_id"
    t.varchar "catalog_attribute_code", limit: 25
    t.integer "ref_serial_no"
    t.varchar "catalog_attribute_value_code", limit: 25
    t.varchar "remarks", limit: 50
    t.integer "sales_quotation_line_id"
    t.index ["sales_quotation_line_id", "catalog_item_id"], name: "idx_sales_quot_attr_val_quot_line_item_id"
  end

  create_table "sales_quotation_line_charges", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_quotation_line_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.varchar "customer_sku_no", limit: 25
    t.varchar "line_type", limit: 1
    t.varchar "option_description", limit: 1000
    t.varchar "blank_good_flag", limit: 1
    t.varchar "reason", limit: 200
    t.char "is_manually_added", limit: 1, default: "N"
    t.varchar "qty_dependable_flag", limit: 1, default: "N"
    t.index ["sales_quotation_line_id"], name: "idx_sales_quot_lns_quot_line_id"
  end

  create_table "sales_quotation_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_quotation_id", null: false
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "serial_no", limit: 6
    t.varchar "ref_serial_no", limit: 6
    t.varchar "item_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.varchar "item_description", limit: 1000
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "ref_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "item_price", precision: 12, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.integer "store_id"
    t.varchar "customer_sku_no", limit: 25
    t.varchar "line_type", limit: 1
    t.varchar "option_description", limit: 1000
    t.varchar "blank_good_flag", limit: 1
    t.varchar "reason", limit: 200
    t.decimal "column1", precision: 12, scale: 3, default: 0.0
    t.decimal "column2", precision: 12, scale: 3, default: 0.0
    t.decimal "column3", precision: 12, scale: 3, default: 0.0
    t.decimal "column4", precision: 12, scale: 3, default: 0.0
    t.decimal "column5", precision: 12, scale: 3, default: 0.0
    t.decimal "column6", precision: 12, scale: 3, default: 0.0
    t.decimal "column7", precision: 12, scale: 3, default: 0.0
    t.decimal "column8", precision: 12, scale: 3, default: 0.0
    t.decimal "column9", precision: 12, scale: 3, default: 0.0
    t.decimal "column10", precision: 12, scale: 3, default: 0.0
    t.decimal "blank_good_price", precision: 12, scale: 3, default: 0.0
    t.varchar "column1_quotation_flag", limit: 1, default: "N"
    t.varchar "column2_quotation_flag", limit: 1, default: "N"
    t.varchar "column3_quotation_flag", limit: 1, default: "N"
    t.varchar "column4_quotation_flag", limit: 1, default: "N"
    t.varchar "column5_quotation_flag", limit: 1, default: "N"
    t.varchar "column6_quotation_flag", limit: 1, default: "N"
    t.varchar "column7_quotation_flag", limit: 1, default: "N"
    t.varchar "column8_quotation_flag", limit: 1, default: "N"
    t.varchar "column9_quotation_flag", limit: 1, default: "N"
    t.varchar "column10_quotation_flag", limit: 1, default: "N"
    t.varchar "column1_shipping_flag", limit: 1, default: "N"
    t.varchar "column2_shipping_flag", limit: 1, default: "N"
    t.varchar "column3_shipping_flag", limit: 1, default: "N"
    t.varchar "column4_shipping_flag", limit: 1, default: "N"
    t.varchar "column5_shipping_flag", limit: 1, default: "N"
    t.varchar "column6_shipping_flag", limit: 1, default: "N"
    t.varchar "column7_shipping_flag", limit: 1, default: "N"
    t.varchar "column8_shipping_flag", limit: 1, default: "N"
    t.varchar "column9_shipping_flag", limit: 1, default: "N"
    t.varchar "column10_shipping_flag", limit: 1, default: "N"
    t.decimal "column1_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column2_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column3_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column4_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column5_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column6_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column7_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column8_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column9_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column10_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependableblank", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable1", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable2", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable3", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable4", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable5", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable6", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable7", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable8", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable9", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable10", precision: 12, scale: 2, default: 0.0
    t.decimal "blank_amount", precision: 12, scale: 2, default: 0.0
    t.decimal "column1_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column2_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column3_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column4_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column5_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column6_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column7_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column8_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column9_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column10_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amtblank", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt1", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt2", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt3", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt4", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt5", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt6", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt7", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt8", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt9", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt10", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amtblank", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt1", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt2", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt3", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt4", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt5", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt6", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt7", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt8", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt9", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt10", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amtblank", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt1", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt2", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt3", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt4", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt5", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt6", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt7", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt8", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt9", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt10", precision: 12, scale: 2, default: 0.0
    t.decimal "column11", precision: 12, scale: 3, default: 0.0
    t.decimal "column12", precision: 12, scale: 3, default: 0.0
    t.decimal "column13", precision: 12, scale: 3, default: 0.0
    t.decimal "column14", precision: 12, scale: 3, default: 0.0
    t.decimal "column15", precision: 12, scale: 3, default: 0.0
    t.varchar "column11_quotation_flag", limit: 1, default: "N"
    t.varchar "column12_quotation_flag", limit: 1, default: "N"
    t.varchar "column13_quotation_flag", limit: 1, default: "N"
    t.varchar "column14_quotation_flag", limit: 1, default: "N"
    t.varchar "column15_quotation_flag", limit: 1, default: "N"
    t.varchar "column11_shipping_flag", limit: 1, default: "N"
    t.varchar "column12_shipping_flag", limit: 1, default: "N"
    t.varchar "column13_shipping_flag", limit: 1, default: "N"
    t.varchar "column14_shipping_flag", limit: 1, default: "N"
    t.varchar "column15_shipping_flag", limit: 1, default: "N"
    t.decimal "column11_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column12_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column13_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column14_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column15_ship_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable11", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable12", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable13", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable14", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt_item_dependable15", precision: 12, scale: 2, default: 0.0
    t.decimal "column11_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column12_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column13_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column14_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "column15_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt11", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt12", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt13", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt14", precision: 12, scale: 2, default: 0.0
    t.decimal "setup_amt15", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt11", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt12", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt13", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt14", precision: 12, scale: 2, default: 0.0
    t.decimal "accessory_amt15", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt11", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt12", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt13", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt14", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt15", precision: 12, scale: 2, default: 0.0
    t.varchar "missing_info_description", limit: 1000
    t.varchar "package_profile_code1", limit: 25
    t.varchar "package_profile_code2", limit: 25
    t.varchar "package_profile_code3", limit: 25
    t.varchar "package_profile_code4", limit: 25
    t.varchar "package_profile_code5", limit: 25
    t.varchar "package_profile_code6", limit: 25
    t.varchar "package_profile_code7", limit: 25
    t.varchar "package_profile_code8", limit: 25
    t.varchar "package_profile_code9", limit: 25
    t.varchar "package_profile_code10", limit: 25
    t.varchar "package_profile_code11", limit: 25
    t.varchar "package_profile_code12", limit: 25
    t.varchar "package_profile_code13", limit: 25
    t.varchar "package_profile_code14", limit: 25
    t.varchar "package_profile_code15", limit: 25
    t.decimal "column1_qty", precision: 12
    t.decimal "column2_qty", precision: 12
    t.decimal "column3_qty", precision: 12
    t.decimal "column4_qty", precision: 12
    t.decimal "column5_qty", precision: 12
    t.decimal "column6_qty", precision: 12
    t.decimal "column7_qty", precision: 12
    t.decimal "column8_qty", precision: 12
    t.decimal "column9_qty", precision: 12
    t.decimal "column10_qty", precision: 12
    t.decimal "column11_qty", precision: 12
    t.decimal "column12_qty", precision: 12
    t.decimal "column13_qty", precision: 12
    t.decimal "column14_qty", precision: 12
    t.decimal "column15_qty", precision: 12
    t.decimal "production_day1", precision: 12, scale: 2
    t.decimal "production_day2", precision: 12, scale: 2
    t.decimal "production_day3", precision: 12, scale: 2
    t.decimal "production_day4", precision: 12, scale: 2
    t.decimal "production_day5", precision: 12, scale: 2
    t.decimal "production_day6", precision: 12, scale: 2
    t.decimal "production_day7", precision: 12, scale: 2
    t.decimal "production_day8", precision: 12, scale: 2
    t.decimal "production_day9", precision: 12, scale: 2
    t.decimal "production_day10", precision: 12, scale: 2
    t.decimal "production_day11", precision: 12, scale: 2
    t.decimal "production_day12", precision: 12, scale: 2
    t.decimal "production_day13", precision: 12, scale: 2
    t.decimal "production_day14", precision: 12, scale: 2
    t.decimal "production_day15", precision: 12, scale: 2
    t.index ["sales_quotation_id"], name: "idx_sales_quotations_quot_id"
  end

  create_table "sales_quotation_shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_quotation_id", null: false
    t.varchar "serial_no", limit: 6
    t.datetime "ship_date", precision: nil
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.decimal "ship_qty", precision: 10, scale: 4
    t.integer "customer_shipping_id"
    t.varchar "shipping_code", limit: 50
    t.varchar "ship_method", limit: 100
    t.varchar "ship_method_description", limit: 200
    t.datetime "estimated_ship_date", precision: nil
    t.varchar "shipvia_accountnumber", limit: 25
    t.varchar "packaging_flag", limit: 1, default: "N"
    t.datetime "packaging_date", precision: nil
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "shipping_flag", limit: 1, default: "N"
    t.datetime "shipping_date", precision: nil
    t.datetime "inhand_date", precision: nil
    t.datetime "estimated_arrival_date", precision: nil
    t.varchar "attention", limit: 50
    t.varchar "invoiced_flag", limit: 1, default: "N"
    t.datetime "internal_ship_date", precision: nil
    t.datetime "internal_inhand_date", precision: nil
    t.varchar "pre_prod_flag", limit: 1, default: "N"
    t.varchar "tracking_no", limit: 50
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "ship_to_vendor_flag", limit: 1, default: "N"
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "customer_shipping_code", limit: 25
    t.decimal "damaged_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "bill_transportation_to", limit: 50
    t.varchar "ship_method_code", limit: 25
    t.varchar "remarks", limit: 255
    t.varchar "residential_indicator", limit: 1
    t.char "insurance_flag", limit: 1
    t.char "saturday_delivery_flag", limit: 1
    t.varchar "is_address_validated", limit: 1, default: "N"
    t.varchar "third_party_zip", limit: 15
    t.varchar "third_party_country", limit: 20
    t.index ["sales_quotation_id"], name: "idx_sales_quot_ship_quote_id"
  end

  create_table "sales_quotation_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sales_quotation_id"
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil
    t.datetime "activity_date", precision: nil
    t.varchar "sales_quotation_stage_code", limit: 100
    t.varchar "remarks", limit: 200
    t.integer "user_id"
    t.integer "sequence_no"
    t.index ["sales_quotation_id"], name: "idx_sales_quot_ship_quote_id"
  end

  create_table "sales_quotations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18, null: false
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil, null: false
    t.integer "customer_id", null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.datetime "sales_date", precision: nil
    t.varchar "term_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.datetime "cancel_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "ship_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "trans_type", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "post_flag", limit: 1, default: "U"
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "clear_qty", precision: 10, scale: 4, default: 0.0
    t.decimal "discount_per", precision: 6, scale: 2, default: 0.0
    t.decimal "tax_per", precision: 6, scale: 3, default: 0.0
    t.decimal "item_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "tax_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "discount_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "net_amt", precision: 12, scale: 2, default: 0.0
    t.varchar "remarks", limit: 255
    t.varchar "tracking_no", limit: 50
    t.varchar "ship_name", limit: 50
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "bill_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "bill_country", limit: 20
    t.varchar "ship_phone", limit: 50
    t.varchar "ship_fax", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "ext_ref_no", limit: 50
    t.datetime "ext_ref_date", precision: nil
    t.decimal "other_amt", precision: 12, scale: 2, default: 0.0
    t.decimal "ship_amt", precision: 12, scale: 2, default: 0.0
    t.integer "customer_shipping_id"
    t.integer "store_id"
    t.varchar "salesperson_code", limit: 25
    t.varchar "account_dept_email", limit: 200
    t.varchar "artwork_dept_email", limit: 200
    t.varchar "corr_dept_email", limit: 200
    t.varchar "purchase_dept_email", limit: 200
    t.varchar "shipping_dept_email", limit: 200
    t.varchar "paper_proof_status", limit: 50
    t.varchar "accounting_status", limit: 50
    t.varchar "customer_contact", limit: 50
    t.varchar "customer_phone", limit: 50
    t.varchar "externalsalesperson_code", limit: 25
    t.varchar "inventory_status", limit: 50
    t.varchar "rushorder_flag", limit: 1
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.varchar "quick_order_flag", limit: 1
    t.varchar "ref_cust_po_no", limit: 50
    t.varchar "missing_order_info", limit: 2000
    t.integer "ref_virtual_line_id"
    t.varchar "customer_code", limit: 25
    t.varchar "ext_notes", limit: 255
    t.varchar "send_to_customer_flag", limit: 1
    t.datetime "expiry_date", precision: nil
    t.varchar "territory", limit: 25
    t.varchar "salesperson_info", limit: 250
    t.varchar "externalsalesperson_info", limit: 250
    t.varchar "customer_contact_email", limit: 50
    t.char "insurance_flag", limit: 1
    t.integer "customer_contact_id"
    t.index ["customer_id"], name: "idx_sales_quotations_customer_id"
  end

  create_table "salespeople", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "category", limit: 25
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "country", limit: 20
    t.varchar "phone1", limit: 50
    t.varchar "fax1", limit: 50
    t.varchar "contact1", limit: 50
    t.varchar "commn_type", limit: 4
    t.decimal "flat_per", precision: 6, scale: 2
    t.decimal "a_per", precision: 6, scale: 2
    t.decimal "b_per", precision: 6, scale: 2
    t.decimal "c_per", precision: 6, scale: 2
    t.decimal "d_per", precision: 6, scale: 2
    t.decimal "e_per", precision: 6, scale: 2
    t.decimal "f_per", precision: 6, scale: 2
    t.decimal "g_per", precision: 6, scale: 2
    t.decimal "h_per", precision: 6, scale: 2
    t.decimal "i_per", precision: 6, scale: 2
    t.decimal "j_per", precision: 6, scale: 2
    t.decimal "gross_margin_per", precision: 6, scale: 2
    t.varchar "commn_payment_type", limit: 2, default: "A"
    t.varchar "id_prefix", limit: 8
    t.decimal "commission_on_receipt", precision: 6, scale: 2
    t.varchar "password", limit: 20
    t.varchar "email", limit: 200
    t.varchar "updated_by_code", limit: 25
    t.integer "customer_id"
    t.varchar "login_id", limit: 25
    t.index ["code"], name: "idx_salespeople_code", unique: true
  end

  create_table "salesperson_equipments", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "salesperson_id"
    t.varchar "equipment_number", limit: 100
    t.varchar "updated_by_code", limit: 25
  end

  create_table "salesperson_states", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version", default: 0
    t.integer "salesperson_id"
    t.varchar "state_code", limit: 25
    t.varchar "state_name", limit: 25
    t.index ["salesperson_id"], name: "idx_sp_states_sp_id"
  end

  create_table "schema_info", id: false, force: :cascade do |t|
    t.integer "version", null: false
  end

  create_table "sections", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.integer "warehouse_id"
  end

  create_table "sent", id: :integer, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "created_by"
    t.integer "updated_by"
    t.integer "lock_version", default: 0
    t.char "trans_flag", limit: 1, default: "A"
    t.char "update_flag", limit: 1, default: "V"
    t.varchar "email_message_id", limit: 1
    t.integer "email_uid"
    t.datetime "received_at", precision: nil
    t.varchar "email_from", limit: 1
    t.varchar "email_to", limit: 1
    t.varchar "email_cc", limit: 1
    t.varchar "email_subject", limit: 1
    t.text "email_text_body"
    t.varchar "attachments", limit: 1
    t.integer "xpriority"
    t.varchar "keywords", limit: 1
    t.varchar "in_reply_to", limit: 1
    t.varchar "thread_index", limit: 1
    t.integer "task_id"
  end

  create_table "sequences", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "book_cd", limit: 4
    t.varchar "book_nm", limit: 30
    t.varchar "book_lno", limit: 18
    t.varchar "docu_typ", limit: 10
    t.varchar "default_bk", limit: 1
    t.varchar "link_bk1", limit: 4
    t.varchar "link_bk2", limit: 4
    t.varchar "lno_flag", limit: 1
    t.datetime "lno_date", precision: nil
    t.varchar "edit_flag", limit: 1
    t.varchar "table_nm", limit: 40
    t.integer "user_id"
    t.varchar "prod_trans_type", limit: 4
    t.varchar "updated_by_code", limit: 25
    t.varchar "category", limit: 25
  end

  create_table "shape_codes", id: false, force: :cascade do |t|
    t.string "shape_code", limit: 50, null: false
    t.string "shape_name", limit: 50
  end

  create_table "ship_discount_configurations", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.datetime "start_date", precision: nil, null: false
    t.datetime "end_date", precision: nil, null: false
    t.varchar "shipping_code", limit: 50
    t.varchar "state_code", limit: 25, default: "ALL"
    t.varchar "customer_category_code", limit: 25, default: "ALL"
    t.varchar "customer_code", limit: 25, default: "ALL"
    t.varchar "catalog_item_category_code", limit: 25, default: "ALL"
    t.varchar "catalog_item_code", limit: 25, default: "ALL"
    t.varchar "original_ship_method", limit: 100
    t.varchar "discounted_ship_method", limit: 100
    t.varchar "original_service_code", limit: 100
    t.varchar "discounted_service_code", limit: 100
    t.varchar "is_fixed_ship_amt", limit: 1
    t.decimal "discounted_ship_amt", precision: 12, scale: 2
    t.decimal "minimum_qty", precision: 10, scale: 2
    t.decimal "maximum_qty", precision: 10, scale: 2
    t.varchar "remarks", limit: 255
  end

  create_table "shipping_quote_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "shipping_quote_id", null: false
    t.varchar "service_name", limit: 200
    t.decimal "price", precision: 12, scale: 2, default: 0.0
    t.integer "business_transit_days"
    t.datetime "delivery_date", precision: nil
    t.index ["shipping_quote_id"], name: "idx_shipping_quote_lines_shipping_quote_id"
  end

  create_table "shipping_quotes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "catalog_item_code", limit: 25, null: false
    t.integer "customer_id"
    t.varchar "customer_code", limit: 25
    t.decimal "item_qty", precision: 10, scale: 4, default: 0.0
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.char "insurance_flag", limit: 1, default: "N"
    t.varchar "saturday_delivery_flag", limit: 1, default: "N"
    t.varchar "residential_indicator", limit: 1
    t.varchar "other_package", limit: 50, null: false
    t.varchar "ship_address1", limit: 50
    t.varchar "ship_address2", limit: 50
    t.varchar "ship_city", limit: 25
    t.integer "stock_qty"
    t.varchar "item_attribute", limit: 100
    t.index ["trans_flag", "company_id", "catalog_item_code", "customer_code"], name: "idx_shipping_quotes_trans_flag_company_id_item_customer"
  end

  create_table "shippings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "charge_flag", limit: 1, default: "N"
    t.varchar "charge_shipping", limit: 1, default: "N"
    t.varchar "phone", limit: 50
    t.varchar "url", limit: 200
    t.varchar "updated_by_code", limit: 25
  end

  create_table "soa_prodfile", id: false, force: :cascade do |t|
    t.bigint "so_id"
    t.bigint "soa_id"
    t.varchar "artwork_version", limit: 25
    t.varchar "prodfile_version", limit: 25
  end

  create_table "social_connects", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.varchar "provider_type", limit: 6
    t.varchar "provider_id", limit: 50
  end

  create_table "ssis_utility_ftp_details", id: false, force: :cascade do |t|
    t.varchar "ftp_type", limit: 50
    t.varchar "ftp_name", limit: 18, null: false
    t.varchar "ftp_url", limit: 100
    t.integer "ftp_port"
    t.varchar "ftp_user", limit: 40
    t.varchar "ftp_password", limit: 40
    t.varchar "ftp_certificate_no", limit: 255
    t.varchar "operation", limit: 18
    t.varchar "smtp_name", limit: 50
    t.integer "smtp_port"
    t.varchar "smtp_user", limit: 25
    t.varchar "smtp_password", limit: 25
    t.varchar "smtp_authentication", limit: 50
    t.char "smtp_enable_ssl", limit: 1
    t.varchar "email_format", limit: 4
    t.varchar "email_to_1", limit: 255
    t.varchar "email_to_2", limit: 255
    t.varchar "email_from", limit: 100
    t.varchar "email_cc_1", limit: 255
    t.varchar "email_cc_2", limit: 255
    t.varchar "email_subject", limit: 255
    t.text_basic "email_body"
    t.varchar "email_attachment_url", limit: 255
    t.varchar "local_path", limit: 255
    t.varchar "remote_path", limit: 255
    t.varchar "file_name", limit: 255
    t.varchar "file_prefix", limit: 255
    t.varchar "remote_file_extension", limit: 4
    t.varchar "local_file_extension", limit: 4
    t.varchar "storedprocedure_name", limit: 255
    t.char "user_cd", limit: 4
    t.char "trans_flag", limit: 1
    t.char "company_id", limit: 4
    t.char "update_flag", limit: 1
    t.datetime "update_dt", precision: nil
    t.varchar "batchfilefullpath", limit: 255
    t.varchar "backup_path", limit: 255
    t.varchar "backup_fileName", limit: 255
    t.varchar "backup_fileSuffix", limit: 255
    t.char "backup_flag", limit: 1
    t.varchar "templatefile", limit: 255
    t.varchar "backup_batch_fileName", limit: 255
    t.char "generate_file_flag", limit: 1
    t.varchar "file_suffix", limit: 50
  end

  create_table "states", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "created_by", limit: 25
    t.string "updated_by", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "update_flag", limit: 1, default: "Y"
    t.string "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.bigint "country_id"
    t.string "code", limit: 25
    t.string "name", limit: 50
  end

  create_table "store_credits", id: :integer, force: :cascade do |t|
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4, null: false
    t.varchar "trans_no", limit: 18, null: false
    t.datetime "trans_date", precision: nil, null: false
    t.varchar "account_period_code", limit: 8, null: false
    t.varchar "store_credit", limit: 25
    t.decimal "value", precision: 12, scale: 2
    t.varchar "status", limit: 1
    t.integer "customer_id", null: false
    t.varchar "customer_code", limit: 25
    t.varchar "bill_name", limit: 50
    t.varchar "bill_address1", limit: 50
    t.varchar "bill_address2", limit: 50
    t.varchar "bill_phone", limit: 50
    t.varchar "bill_fax", limit: 50
    t.varchar "bill_city", limit: 25
    t.varchar "bill_state", limit: 25
    t.varchar "bill_zip", limit: 15
    t.varchar "bill_country", limit: 20
    t.varchar "bill_first_name", limit: 50
    t.varchar "bill_last_name", limit: 50
    t.varchar "bill_email", limit: 200
    t.varchar "bill_cell_no", limit: 15
    t.varchar "ship_name", limit: 25
    t.varchar "ship_first_name", limit: 25
    t.varchar "ship_last_name", limit: 25
    t.varchar "ship_address1", limit: 25
    t.varchar "ship_address2", limit: 25
    t.varchar "ship_phone", limit: 25
    t.varchar "ship_fax", limit: 25
    t.varchar "ship_city", limit: 25
    t.varchar "ship_state", limit: 25
    t.varchar "ship_zip", limit: 15
    t.varchar "ship_country", limit: 20
    t.varchar "ship_cell_no", limit: 15
    t.varchar "ship_email", limit: 200
    t.integer "terminal_id"
    t.varchar "terminal_code", limit: 25
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "net_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "ship_amt", precision: 12, scale: 2
    t.decimal "tax_amt", precision: 12, scale: 2
    t.decimal "tax_per", precision: 12, scale: 2
    t.decimal "discount_per", precision: 12, scale: 2
    t.varchar "shipped_flag", limit: 1
    t.varchar "delivery_method", limit: 1
    t.varchar "tax_code", limit: 25
    t.varchar "term_code", limit: 25
    t.decimal "other_amt", precision: 12, scale: 2
    t.decimal "insurance_amt", precision: 12, scale: 2
    t.varchar "tax1_code", limit: 25
    t.decimal "tax1_per", precision: 6, scale: 3
    t.decimal "tax1_amt", precision: 10, scale: 2
    t.varchar "tax2_code", limit: 25
    t.decimal "tax2_per", precision: 6, scale: 3
    t.decimal "tax2_amt", precision: 10, scale: 2
    t.varchar "ship_code", limit: 25
    t.decimal "duty_amt", precision: 12, scale: 2
    t.varchar "remarks", limit: 255
  end

  create_table "sublimation_item_settings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "item_id", null: false
    t.varchar "item_code", limit: 23
    t.decimal "artwork_height", precision: 5, scale: 2
    t.decimal "artwork_width", precision: 5, scale: 2
    t.integer "rotate_degree"
    t.integer "across"
    t.index ["item_id", "item_code"], name: "idx_sublimation_itm_stngs_item_id"
  end

  create_table "sublimation_printer_profiles", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "sublimation_printer_id", null: false
    t.varchar "profile_name", limit: 50
    t.index ["sublimation_printer_id"], name: "idx_sublimation_prt_prf_sublmtion_prt_id"
  end

  create_table "sublimation_printers", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.varchar "hot_folder", limit: 500
  end

  create_table "synchronizations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "table_name", limit: 50, null: false
    t.varchar "pkey1", limit: 20
    t.varchar "pkey2", limit: 20
    t.varchar "pkey3", limit: 20
    t.varchar "pkey4", limit: 20
    t.varchar "pkey5", limit: 20
  end

  create_table "sysdiagrams", primary_key: "diagram_id", id: :integer, force: :cascade do |t|
    t.string "name", null: false
    t.integer "principal_id", null: false
    t.integer "version"
    t.binary "definition"
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

  create_table "tekweld_asi_temp", id: false, force: :cascade do |t|
    t.float "supplier_asi_number"
    t.float "distributor_asi_number"
    t.string "account_number", limit: 255
    t.string "user_name", limit: 255
    t.string "password", limit: 255
    t.string "dist_name", limit: 255
    t.string "address1", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 255
    t.string "postal_code", limit: 255
    t.string "country", limit: 255
    t.string "phone_number", limit: 255
  end

  create_table "temp_blank_images_20230517", id: false, force: :cascade do |t|
    t.string "item_code", limit: 50, null: false
    t.integer "item_color", null: false
    t.string "file_name", limit: 50, null: false
  end

  create_table "temp_catalog_attributes_20232108", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50, null: false
    t.varchar "description", limit: 100
    t.varchar "is_boolean", limit: 1
    t.varchar "setup_item_code", limit: 25
    t.integer "setup_item_id"
    t.varchar "setup_item_code2", limit: 25
    t.integer "setup_item_id2"
    t.varchar "missing_info_required_flag", limit: 1
    t.varchar "updated_by_code", limit: 25
    t.varchar "asi_code", limit: 50
  end

  create_table "temp_catalog_item_images", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1
    t.char "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "catalog_item_id", null: false
    t.varchar "imprint_type_code", limit: 25
    t.varchar "image_file_name", limit: 200
  end

  create_table "temp_customers_sales_persons", id: false, force: :cascade do |t|
    t.string "Customer_code", limit: 255
    t.string "Name", limit: 255
    t.string "Parent_code", limit: 255
    t.string "Outside_Rep", limit: 255
    t.string "Regional_Responsible", limit: 255
    t.string "Strategic_inside_Rep", limit: 255
    t.string "CSR", limit: 255
    t.string "National_Rep", limit: 255
    t.string "NATIONAL", limit: 255
    t.string "ECOM", limit: 255
    t.string "TARGETACCT", limit: 255
    t.string "Account_Type", limit: 255
    t.string "SAM_Account", limit: 255
    t.string "Buying_Group", limit: 255
    t.string "Pricing_Group", limit: 255
    t.string "City", limit: 255
    t.string "State", limit: 255
  end

  create_table "temp_image_import_batch8", id: false, force: :cascade do |t|
    t.varchar "image_name", limit: 50
  end

  create_table "temp_image_import_batch8_modified", id: false, force: :cascade do |t|
    t.integer "first_del"
    t.integer "second_del"
    t.integer "temp"
    t.varchar "catalog_item", limit: 50
    t.varchar "color", limit: 50
    t.varchar "imprint_type", limit: 50
    t.varchar "mapped_imprint_type", limit: 25
    t.varchar "image_name", limit: 50
  end

  create_table "temp_image_import_batch9", id: false, force: :cascade do |t|
    t.varchar "image_name", limit: 50
  end

  create_table "temp_image_import_batch9_splitted", id: false, force: :cascade do |t|
    t.varchar "image_name", limit: 50
    t.varchar "first_", limit: 50
    t.varchar "second_"
    t.varchar "third_"
    t.varchar "four_"
  end

  create_table "temp_image_import_second", id: false, force: :cascade do |t|
    t.varchar "first", limit: 50
    t.varchar "second"
    t.varchar "new_remaning_sub"
    t.varchar "remaining_sub"
    t.varchar "image_name", limit: 50
  end

  create_table "temp_images", id: false, force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "temp_nicon_inventory_20230714", id: false, force: :cascade do |t|
    t.varchar "ID", limit: 50
    t.varchar "LOCATION", limit: 50
    t.varchar "ITEM", limit: 50
    t.varchar "QTY", limit: 50
  end

  create_table "temp_nicon_inventory_20230714_group", id: false, force: :cascade do |t|
    t.varchar "item", limit: 50
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230719", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "location", limit: 255
    t.string "item", limit: 255
    t.float "qty"
  end

  create_table "temp_nicon_inventory_20230719_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230721", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "LOCATION", limit: 255
    t.string "ITEM", limit: 255
    t.float "QTY"
  end

  create_table "temp_nicon_inventory_20230721_eod", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "location", limit: 255
    t.string "item", limit: 255
    t.float "qty"
  end

  create_table "temp_nicon_inventory_20230721_eod_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230721_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230725", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "LOCATION", limit: 255
    t.string "ITEM", limit: 255
    t.float "QTY"
  end

  create_table "temp_nicon_inventory_20230725_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230801", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "LOCATION", limit: 255
    t.string "ITEM", limit: 255
    t.float "QTY"
  end

  create_table "temp_nicon_inventory_20230801_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_nicon_inventory_20230811", id: false, force: :cascade do |t|
    t.string "ID", limit: 255
    t.string "LOCATION", limit: 255
    t.string "ITEM", limit: 255
    t.float "QTY"
  end

  create_table "temp_nicon_inventory_20230811_group", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.integer "qty"
  end

  create_table "temp_option_asi_name", id: false, force: :cascade do |t|
    t.float "id"
    t.string "code", limit: 255
    t.string "ASI_Name", limit: 255
  end

  create_table "temp_pallet_info", id: false, force: :cascade do |t|
    t.string "ITEM", limit: 255
    t.float "#  Master Cartons per pallet "
    t.float "Inner Carton per Master "
    t.float "UNITS PER INNER BOX"
    t.float "Total per Master Carton "
    t.float "TOTAL per pallet"
  end

  create_table "temp_spence_inventory_220325", id: false, force: :cascade do |t|
    t.string "location", limit: 255
    t.string "item_no", limit: 255
    t.string "Color", limit: 255
    t.float "qty"
    t.datetime "exoiry_date", precision: nil
    t.string "F6", limit: 255
  end

  create_table "temp_tekweld_inventory_220325", id: false, force: :cascade do |t|
    t.string "location", limit: 255
    t.string "item_no", limit: 255
    t.string "Color", limit: 255
    t.float "qty"
    t.string "expiry_date", limit: 255
    t.string "F6", limit: 255
    t.string "F7", limit: 255
    t.string "F8", limit: 255
    t.string "F9", limit: 255
    t.string "F10", limit: 255
    t.string "F11", limit: 255
    t.string "F12", limit: 255
    t.string "F13", limit: 255
    t.string "F14", limit: 255
    t.string "F15", limit: 255
    t.string "F16", limit: 255
    t.string "F17", limit: 255
    t.string "F18", limit: 255
  end

  create_table "temp_tekweld_item_images", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "item_type", limit: 50
    t.string "code", limit: 100
    t.string "item_color", limit: 100
    t.string "color_code", limit: 100
    t.string "imprint_type", limit: 100
    t.string "imprint_code", limit: 100
    t.string "image_name", limit: 250
  end

  create_table "terms", id: :integer, force: :cascade do |t|
    t.varchar "code", limit: 25, default: " ", null: false
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "name", limit: 50
    t.decimal "pay1_per", precision: 6, scale: 2
    t.integer "pay1_days"
    t.decimal "pay2_per", precision: 6, scale: 2
    t.integer "pay2_days"
    t.decimal "pay3_per", precision: 6, scale: 2
    t.integer "pay3_days"
    t.decimal "pay4_per", precision: 6, scale: 2
    t.integer "pay4_days"
    t.decimal "pay5_per", precision: 6, scale: 2
    t.integer "pay5_days"
    t.decimal "pay6_per", precision: 6, scale: 2
    t.integer "pay6_days"
    t.varchar "updated_by_code", limit: 25
    t.decimal "pay7_per", precision: 6, scale: 2
    t.integer "pay7_days"
    t.decimal "pay8_per", precision: 6, scale: 2
    t.integer "pay8_days"
    t.decimal "pay9_per", precision: 6, scale: 2
    t.integer "pay9_days"
    t.decimal "pay10_per", precision: 6, scale: 2
    t.integer "pay10_days"
    t.decimal "pay11_per", precision: 6, scale: 2
    t.integer "pay11_days"
    t.decimal "pay12_per", precision: 6, scale: 2
    t.integer "pay12_days"
    t.decimal "disc_per", precision: 6, scale: 2
    t.integer "disc_days"
  end

  create_table "territories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "description", limit: 100
    t.index ["code"], name: "idx_territories_code", unique: true
  end

  create_table "thirdpartyshippingcharge_temp", id: false, force: :cascade do |t|
    t.text "buying_id"
    t.integer "id", null: false
    t.text "buying_group_code"
    t.integer "customer_item_pricing_id", null: false
  end

  create_table "thread_colors", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "thread_company", limit: 25
    t.varchar "thread_category", limit: 25
    t.varchar "color_number", limit: 50
    t.varchar "color_card_sequence", limit: 50
  end

  create_table "twilio_integrations", force: :cascade do |t|
    t.integer "sales_order_id", null: false
    t.integer "user_id", null: false
    t.string "artwork_ready_for_eproof_enabled", limit: 1, default: "N"
    t.string "order_shipped_enabled", limit: 1, default: "N"
    t.string "order_delivered_enabled", limit: 1, default: "N"
    t.integer "company_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "update_flag", limit: 1, default: "Y"
    t.string "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
  end

  create_table "types", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "type_cd", limit: 20, null: false
    t.varchar "subtype_cd", limit: 20, null: false
    t.varchar "value", limit: 250
    t.varchar "description", limit: 100
    t.varchar "updated_by_code", limit: 25
    t.index ["type_cd", "subtype_cd"], name: "types_type_cd_subtype_cd"
  end

  create_table "user_companies", id: :integer, force: :cascade do |t|
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.integer "company_id", null: false
    t.varchar "user_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.index ["user_id"], name: "idx_user_companies_user_id"
  end

  create_table "user_login_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 0, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.char "user_code", limit: 25
    t.datetime "login_time", precision: nil
    t.varchar "login", limit: 255
    t.char "login_type", limit: 1
  end

  create_table "user_members", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.integer "member_id", null: false
    t.varchar "login", limit: 255
    t.varchar "first_name", limit: 80
    t.varchar "last_name", limit: 80
  end

  create_table "user_permissions", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "role_id", null: false
    t.integer "user_id", null: false
    t.varchar "updated_by_code", limit: 25
    t.index ["user_id", "role_id"], name: "idx_user_permissions_user_role_id"
  end

  create_table "user_preferences", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.integer "document_id", null: false
    t.varchar "string1", limit: 50
    t.varchar "string2", limit: 50
    t.varchar "string3", limit: 50
    t.varchar "string4", limit: 50
    t.varchar "string5", limit: 50
    t.varchar "string6", limit: 50
    t.varchar "string7", limit: 50
    t.varchar "string8", limit: 50
    t.varchar "string9", limit: 50
    t.varchar "string10", limit: 50
    t.varchar "string11", limit: 50
    t.varchar "string12", limit: 50
    t.varchar "string13", limit: 50
    t.varchar "string14", limit: 50
    t.varchar "string15", limit: 50
    t.varchar "string16", limit: 50
    t.varchar "string17", limit: 50
    t.varchar "string18", limit: 50
    t.varchar "string19", limit: 50
    t.varchar "string20", limit: 50
    t.datetime "date1", precision: nil
    t.datetime "date2", precision: nil
    t.datetime "date3", precision: nil
    t.datetime "date4", precision: nil
    t.datetime "date5", precision: nil
    t.datetime "date6", precision: nil
    t.datetime "date7", precision: nil
    t.datetime "date8", precision: nil
    t.datetime "date9", precision: nil
    t.datetime "date10", precision: nil
    t.decimal "decimal1", precision: 12, scale: 2
    t.decimal "decimal2", precision: 12, scale: 2
    t.decimal "decimal3", precision: 12, scale: 2
    t.decimal "decimal4", precision: 12, scale: 2
    t.decimal "decimal5", precision: 12, scale: 2
    t.decimal "decimal6", precision: 12, scale: 2
    t.decimal "decimal7", precision: 12, scale: 2
    t.decimal "decimal8", precision: 12, scale: 2
    t.decimal "decimal9", precision: 12, scale: 2
    t.decimal "decimal10", precision: 12, scale: 2
    t.varchar "list1", limit: 50
    t.varchar "list2", limit: 50
    t.varchar "list3", limit: 50
    t.varchar "list4", limit: 50
    t.varchar "list5", limit: 50
    t.varchar "list6", limit: 50
    t.varchar "list7", limit: 50
    t.varchar "list8", limit: 50
    t.varchar "list9", limit: 50
    t.varchar "list10", limit: 50
    t.varchar "all1", limit: 1
    t.varchar "all2", limit: 1
    t.varchar "all3", limit: 1
    t.varchar "all4", limit: 1
    t.varchar "all5", limit: 1
    t.varchar "all6", limit: 1
    t.varchar "all7", limit: 1
    t.varchar "all8", limit: 1
    t.varchar "all9", limit: 1
    t.varchar "all10", limit: 1
    t.varchar "updated_by_code", limit: 25
  end

  create_table "user_registered_machines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.varchar "updated_by_code", limit: 25
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id", null: false
    t.varchar "user_code", limit: 25
    t.integer "registered_machine_id", null: false
    t.varchar "registered_machine_code", limit: 25
    t.varchar "approved_flag", limit: 1, default: "N"
    t.datetime "from_date", precision: nil
    t.datetime "to_date", precision: nil
  end

  create_table "user_tokens", force: :cascade do |t|
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id"
    t.varchar "token", limit: 200
    t.datetime "user_active_at", precision: nil
  end

  create_table "user_transaction_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "user_id"
    t.datetime "activity_date", precision: nil
    t.string "user_activity_code", limit: 200
    t.varchar "remarks", limit: 200
    t.integer "updated_by_user_id"
    t.integer "sequence_no"
  end

  create_table "users", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.datetime "created_at", precision: nil
    t.integer "updated_by"
    t.datetime "updated_at", precision: nil
    t.varchar "trans_flag", limit: 1, default: "A"
    t.varchar "update_flag", limit: 1, default: "Y"
    t.integer "lock_version", default: 0
    t.varchar "user_cd", limit: 25
    t.varchar "login_type", limit: 1, null: false
    t.varchar "type_id", limit: 25, null: false
    t.integer "category_id"
    t.varchar "login_flag", limit: 1, default: "N", null: false
    t.datetime "password_change_date", precision: nil
    t.varchar "user_flag", limit: 1, default: "A"
    t.varchar "login", limit: 255
    t.varchar "email", limit: 255
    t.varchar "first_name", limit: 80
    t.varchar "last_name", limit: 80
    t.varchar "crypted_password", limit: 40
    t.varchar "salt", limit: 40
    t.varchar "remember_token", limit: 255
    t.datetime "remember_token_expires_at", precision: nil
    t.integer "last_moodule_id"
    t.varchar "date_format", limit: 10
    t.integer "total_logins", default: 0
    t.integer "default_company_id"
    t.integer "menu_id"
    t.varchar "type_code", limit: 25
    t.varchar "default_company_code", limit: 25
    t.varchar "menu_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "activation_salt", limit: 40
    t.char "allow_all_machine_access", limit: 1
    t.varchar "user_company", limit: 100
    t.varchar "user_phone", limit: 50
    t.varchar "is_crm_user", limit: 1
    t.varchar "timezone", limit: 10
    t.varchar "asi_number", limit: 50
    t.varchar "ppai", limit: 25
    t.varchar "sage", limit: 25
    t.varchar "dc", limit: 25
    t.varchar "upic", limit: 25
    t.datetime "last_login", precision: nil
    t.char "customer_role", limit: 1
    t.varchar "portal_view_only_flag", limit: 1, default: "N"
    t.integer "dob_month"
    t.integer "dob_date"
    t.varchar "job_title", limit: 50
    t.varchar "is_promostandard_user", limit: 1, default: "N"
    t.char "crm_reminder_flag", limit: 1
    t.index ["login_type", "type_code"], name: "NonClusteredIndex-20180326-054727"
    t.index ["type_id"], name: "idx_users_type_id"
    t.index ["user_cd"], name: "idx_users_code", unique: true
  end

  create_table "vendor_advance_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "updated_by_code", limit: 25
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "vendor_advance_id"
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "apply_flag", limit: 1
    t.varchar "ref_trans_bk_no", limit: 25
    t.datetime "ref_trans_date", precision: nil
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.varchar "ref_no", limit: 20
    t.varchar "invoice_no", limit: 18
    t.varchar "invoice_bk", limit: 4
    t.datetime "invoice_date", precision: nil
    t.varchar "credit_invoice_no", limit: 18
    t.varchar "credit_invoice_bk", limit: 4
    t.datetime "credit_invoice_date", precision: nil
    t.index ["vendor_advance_id"], name: "idx_vendor_adv_line_vend_adv_id"
    t.index ["vendor_advance_id"], name: "idx_vendor_advance_lines_adv_id"
  end

  create_table "vendor_advances", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "payment_type", limit: 4
    t.decimal "paid_amt", precision: 12, scale: 2
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.integer "soldto_id"
    t.integer "bank_id"
    t.varchar "bank_code", limit: 25
    t.integer "gl_account_id"
    t.varchar "gl_account_code", limit: 25
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.varchar "deposit_no", limit: 15
    t.varchar "updated_by_code", limit: 25
    t.varchar "payment_no", limit: 18
    t.varchar "payment_bk", limit: 4
    t.datetime "payment_date", precision: nil
    t.varchar "remarks", limit: 255
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "idx_vendor_advances_trans_no"
    t.index ["vendor_id", "vendor_code"], name: "idx_vendor_adv_vend_id_code"
    t.index ["vendor_id"], name: "idx_vendor_advances_vendor_id"
  end

  create_table "vendor_categories", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "invoice_term_code", limit: 25
    t.varchar "memo_term_code", limit: 25
    t.integer "gl_account_payable_id"
    t.integer "gl_account_expense_id"
    t.integer "gl_discount_account_id"
    t.varchar "updated_by_code", limit: 25
    t.varchar "inv_type", limit: 4
    t.integer "gl_account_id"
    t.varchar "gl_account_code", limit: 25
    t.index ["code"], name: "idx_vendor_categories_code", unique: true
    t.index ["code"], name: "idx_vendors_category_code"
  end

  create_table "vendor_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "vendor_id"
    t.varchar "salutation", limit: 4
    t.varchar "first_name", limit: 50
    t.varchar "last_name", limit: 50
    t.varchar "job_title", limit: 50
    t.varchar "department", limit: 50
    t.varchar "manager", limit: 50
    t.varchar "address_name", limit: 50
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "business_phone", limit: 50
    t.varchar "manager_phone", limit: 50
    t.varchar "home_phone", limit: 50
    t.varchar "cell_phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "email", limit: 50
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "address_type", limit: 50
    t.varchar "role", limit: 50
    t.varchar "preferred_contact_method", limit: 50
    t.varchar "gender", limit: 15
    t.varchar "marital_status", limit: 15
    t.datetime "date_of_birth", precision: nil
    t.datetime "date_of_marraige", precision: nil
    t.varchar "code", limit: 25
    t.varchar "default_contact_flag", limit: 1, default: "N"
    t.varchar "secondary_phone_no", limit: 50
    t.varchar "secondary_cell_no", limit: 50
    t.varchar "secondary_email", limit: 50
    t.varchar "secondary_fax", limit: 50
    t.varchar "secondary_direct", limit: 50
    t.varchar "secondary_phone_extn", limit: 50
    t.varchar "secondary_address_name", limit: 50
    t.varchar "secondary_address1", limit: 50
    t.varchar "secondary_address2", limit: 50
    t.varchar "secondary_city", limit: 25
    t.varchar "secondary_state", limit: 25
    t.varchar "secondary_zip", limit: 15
    t.varchar "secondary_country", limit: 20
    t.varchar "phone1_ext", limit: 25
    t.varchar "contact_image", limit: 100
  end

  create_table "vendor_invoice_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.integer "vendor_invoice_id"
    t.integer "gl_account_id"
    t.decimal "gl_amt", precision: 12, scale: 2
    t.varchar "description", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.index ["vendor_invoice_id"], name: "idx_vendor_invoice_lines_vendor_invoice_id"
  end

  create_table "vendor_invoices", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "ref_trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "ref_trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "inv_date", precision: nil
    t.datetime "due_date", precision: nil
    t.datetime "discount_date", precision: nil
    t.datetime "sale_date", precision: nil
    t.datetime "ref_trans_date", precision: nil
    t.varchar "account_period_code", limit: 25
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "clear_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "ten99_yn", limit: 1
    t.varchar "ref_type", limit: 1
    t.varchar "inv_type", limit: 4
    t.varchar "inv_no", limit: 50
    t.integer "vendor_id"
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "inv_amt", precision: 12, scale: 2
    t.decimal "discount_amt", precision: 12, scale: 2
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "clear_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.decimal "ten99_amt", precision: 12, scale: 2
    t.decimal "discount_per", precision: 6, scale: 2
    t.varchar "description", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.char "hold_invoice_flag", limit: 1, default: "N"
    t.index ["company_id", "account_period_code", "trans_bk", "trans_no", "trans_date"], name: "vendor_invoices_company_id_trans_bk_trans_no"
  end

  create_table "vendor_item_stocks", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "vendor_id", null: false
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.decimal "stock_qty", precision: 16, scale: 4
    t.decimal "on_order_qty", precision: 16, scale: 4
    t.datetime "inhand_date", precision: nil
  end

  create_table "vendor_items", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "vendor_id", null: false
    t.integer "catalog_item_id", null: false
    t.varchar "catalog_item_code", limit: 25, null: false
    t.integer "qty_per_pallet", default: 0
    t.integer "qty_per_master_carton", default: 0
    t.integer "qty_per_inner_carton", default: 0
    t.decimal "item_price", precision: 16, scale: 3
    t.varchar "vendor_sku_no", limit: 25
    t.integer "lead_time"
    t.varchar "updated_by_code", limit: 25
    t.index ["vendor_id", "catalog_item_id", "trans_flag"], name: "IX_vendor_items"
  end

  create_table "vendor_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.integer "vendor_id", null: false
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "address1", limit: 50
    t.varchar "address2", limit: 50
    t.varchar "city", limit: 25
    t.varchar "state", limit: 25
    t.varchar "zip", limit: 15
    t.varchar "phone", limit: 50
    t.varchar "fax", limit: 50
    t.varchar "description", limit: 500
    t.varchar "country", limit: 20
    t.varchar "cell_no", limit: 15
    t.varchar "contact_nm", limit: 50
    t.varchar "email_to", limit: 200
    t.varchar "default_yn", limit: 1, default: "N"
  end

  create_table "vendor_payment_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "voucher_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "voucher_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "serial_no", limit: 6
    t.varchar "voucher_flag", limit: 1
    t.varchar "apply_flag", limit: 1
    t.integer "vendor_payment_id"
    t.integer "gl_account_id"
    t.decimal "original_amt", precision: 12, scale: 2
    t.decimal "apply_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "disctaken_amt", precision: 12, scale: 2
    t.varchar "apply_to", limit: 10
    t.varchar "ref_no", limit: 20
    t.varchar "gl_account_code", limit: 25
    t.varchar "gl_account_name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.index ["vendor_payment_id"], name: "idx_vendor_payment_lines_vendor_payment_id"
  end

  create_table "vendor_payments", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.datetime "check_date", precision: nil
    t.datetime "due_date", precision: nil
    t.varchar "account_period_code", limit: 8
    t.varchar "post_flag", limit: 1
    t.varchar "action_flag", limit: 1
    t.varchar "trans_type", limit: 1
    t.varchar "payment_type", limit: 4
    t.integer "vendor_id"
    t.integer "soldto_id"
    t.integer "bank_id"
    t.varchar "term_code", limit: 25
    t.varchar "purchaseperson_code", limit: 25
    t.decimal "paid_amt", precision: 12, scale: 2
    t.decimal "applied_amt", precision: 12, scale: 2
    t.decimal "balance_amt", precision: 12, scale: 2
    t.decimal "item_qty", precision: 10, scale: 4
    t.varchar "check_no", limit: 50
    t.varchar "description", limit: 50
    t.varchar "deposit_no", limit: 15
    t.varchar "bank_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.varchar "vendor_code", limit: 25
    t.varchar "main_trans_no", limit: 18
    t.varchar "ref_trans_type", limit: 1
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.datetime "ref_trans_date", precision: nil
    t.index ["company_id", "account_period_code", "trans_type", "trans_bk", "trans_no", "trans_date"], name: "vendor_payments_company_id_trans_bk_trans_no"
    t.index ["vendor_id"], name: "idx_vendor_payments_vendor_id"
  end

  create_table "vendor_shipment_lines", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.integer "vendor_shipment_id", null: false
    t.varchar "po_no", limit: 18
    t.varchar "po_serial_no", limit: 6
    t.integer "catalog_item_id"
    t.varchar "catalog_item_code", limit: 25
    t.integer "shipment_item_qty"
    t.decimal "shipment_item_amt", precision: 16, scale: 2
    t.varchar "item_description", limit: 1000
    t.decimal "total_pallet_required", precision: 16, scale: 3
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.varchar "vendor_sku_no", limit: 25
    t.decimal "shipment_item_price", precision: 16, scale: 2
    t.varchar "po_barcode", limit: 25
    t.index ["vendor_shipment_id", "trans_flag"], name: "IX_vendor_shipment_lines"
  end

  create_table "vendor_shipments", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "trans_no", limit: 25
    t.varchar "trans_bk", limit: 4
    t.integer "shipping_vendor_id", null: false
    t.varchar "shipping_vendor_code", limit: 25, null: false
    t.varchar "shipment_tracking_no", limit: 50
    t.varchar "shipping_code", limit: 25
    t.varchar "ship_method", limit: 100
    t.datetime "ship_date", precision: nil
    t.datetime "estimated_inhand_date", precision: nil
    t.integer "location_id"
    t.varchar "location_code", limit: 25
    t.decimal "total_pallet_required", precision: 16, scale: 3
    t.varchar "updated_by_code", limit: 25
    t.datetime "trans_date", precision: nil
  end

  create_table "vendors", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "first_name", limit: 50, default: ""
    t.varchar "last_name", limit: 50, default: ""
    t.varchar "name", limit: 100, default: ""
    t.integer "vendor_category_id", null: false
    t.varchar "invoice_term_code", limit: 25
    t.varchar "memo_term_code", limit: 25
    t.decimal "credit_limit", precision: 12, scale: 2
    t.varchar "price_level", limit: 1, default: "A"
    t.varchar "address1", limit: 50, default: ""
    t.varchar "address2", limit: 50, default: ""
    t.varchar "city", limit: 25, default: ""
    t.varchar "state", limit: 25, default: ""
    t.varchar "zip", limit: 15, default: ""
    t.varchar "country", limit: 20, default: ""
    t.varchar "phone", limit: 50, default: ""
    t.varchar "fax", limit: 50, default: ""
    t.varchar "cell_no", limit: 15, default: ""
    t.varchar "email_to", limit: 200, default: ""
    t.varchar "email_cc", limit: 200, default: ""
    t.decimal "discount_per", precision: 5, scale: 2, default: 0.0
    t.integer "gl_account_id"
    t.varchar "purchaseperson_code", limit: 25
    t.varchar "shipping_code", limit: 25
    t.varchar "lab_yn", limit: 1, default: "N"
    t.varchar "logo_file_name", limit: 50
    t.varchar "vendor_category_code", limit: 25
    t.varchar "gl_account_code", limit: 25
    t.varchar "updated_by_code", limit: 25
    t.decimal "metal_mu", precision: 12, scale: 2, default: 0.0
    t.varchar "dataentry_flag", limit: 1
    t.varchar "account_code", limit: 40
    t.varchar "printingvendor_flag", limit: 1
    t.integer "location_id"
    t.varchar "location_code", limit: 25
    t.char "eligible_for_1099_yn", limit: 1, default: "N"
    t.varchar "vendor_fein", limit: 25
    t.varchar "payto_name", limit: 100
    t.varchar "shippingvendor_flag", limit: 1
    t.varchar "aba_trc", limit: 10
    t.varchar "account_no", limit: 50
    t.varchar "account_type", limit: 10
    t.varchar "bank_account_name", limit: 25
    t.varchar "bank_name", limit: 50
    t.varchar "bank_phone", limit: 50
    t.varchar "bank_address", limit: 50
    t.index ["code"], name: "idx_vendors_code"
    t.index ["code"], name: "idx_vendors_code_uniq", unique: true
    t.check_constraint "[id]>=(10001) AND [id]<=(500000)", name: "ck_vendor_id"
  end

  create_table "vrmb_activities", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.integer "activity_by_id"
    t.varchar "activity_by_code", limit: 25
    t.varchar "activity_type", limit: 25
    t.varchar "remarks", limit: 500
    t.datetime "activity_date", precision: nil
    t.varchar "vrmb_contact_name", limit: 100
    t.varchar "vendor_contact_name", limit: 100
    t.varchar "activity_hour", limit: 2
    t.varchar "activity_minute", limit: 2
    t.varchar "activity_date_time_format", limit: 2
    t.integer "vrmb_task_id"
    t.varchar "timezone", limit: 10
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.datetime "trans_date", precision: nil
    t.varchar "regarding", limit: 100
    t.varchar "vrmb_task_no", limit: 18
    t.varchar "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.varchar "ref_type", limit: 1
  end

  create_table "vrmb_activity_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "vrmb_activity_id", null: false
    t.varchar "contact_name", limit: 100
    t.varchar "contact_first_name", limit: 50
    t.varchar "contact_last_name", limit: 50
    t.varchar "contact_phone1", limit: 50
    t.varchar "contact_phone2", limit: 50
    t.varchar "default_contact_flag", limit: 1
    t.varchar "contact_email", limit: 50
    t.varchar "contact_address1", limit: 50
    t.varchar "contact_address2", limit: 50
    t.varchar "contact_city", limit: 25
    t.varchar "contact_state", limit: 25
    t.varchar "contact_zip", limit: 15
    t.varchar "contact_phone3", limit: 50
    t.varchar "contact_phone4", limit: 50
    t.varchar "job_title", limit: 50
  end

  create_table "vrmb_task_contacts", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 6
    t.integer "vrmb_task_id", null: false
    t.varchar "contact_name", limit: 100
    t.varchar "contact_first_name", limit: 50
    t.varchar "contact_last_name", limit: 50
    t.varchar "contact_phone1", limit: 50
    t.varchar "contact_phone2", limit: 50
    t.varchar "default_contact_flag", limit: 1
    t.varchar "contact_email", limit: 50
    t.varchar "contact_address1", limit: 50
    t.varchar "contact_address2", limit: 50
    t.varchar "contact_city", limit: 25
    t.varchar "contact_state", limit: 25
    t.varchar "contact_zip", limit: 15
    t.varchar "contact_phone3", limit: 50
    t.varchar "contact_phone4", limit: 50
    t.varchar "job_title", limit: 50
  end

  create_table "vrmb_task_followups", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.integer "follow_by_id"
    t.varchar "follow_by_code", limit: 25
    t.datetime "follow_on", precision: nil
    t.varchar "remark", limit: 200
    t.varchar "serial_no", limit: 8, null: false
    t.integer "vrmb_task_id", null: false
    t.varchar "status", limit: 18
    t.datetime "next_follow_up_date", precision: nil
    t.varchar "next_follow_up_task", limit: 25
    t.integer "assigned_to_id"
    t.varchar "assigned_to_code", limit: 25
  end

  create_table "vrmb_task_notes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "description", limit: 500
    t.varchar "ref_trans_no", limit: 18
    t.varchar "ref_trans_bk", limit: 4
    t.integer "vrmb_task_id", null: false
    t.varchar "serial_no", limit: 6
    t.varchar "updated_by_code", limit: 50
    t.varchar "notes_category", limit: 50
    t.varchar "subject", limit: 100
    t.varchar "created_by_code", limit: 50
  end

  create_table "vrmb_tasks", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1
    t.varchar "trans_flag", limit: 1
    t.integer "lock_version"
    t.varchar "updated_by_code", limit: 25
    t.varchar "serial_no", limit: 8, null: false
    t.integer "vendor_id"
    t.varchar "vendor_code", limit: 25
    t.integer "purchaseperson_id"
    t.varchar "purchaseperson_code", limit: 25
    t.integer "assigned_user_id"
    t.integer "assigned_to_id"
    t.varchar "assigned_to_code", limit: 25
    t.integer "assigned_by_id"
    t.varchar "assigned_by_code", limit: 25
    t.integer "vrm_contact_id"
    t.datetime "trans_date", precision: nil
    t.varchar "description", limit: 500
    t.datetime "due_date", precision: nil
    t.varchar "duration", limit: 25
    t.varchar "location", limit: 50
    t.varchar "status", limit: 18
    t.varchar "priority", limit: 18
    t.datetime "start_date", precision: nil
    t.datetime "end_date", precision: nil
    t.varchar "reminder_flag", limit: 1
    t.datetime "reminder_datetime", precision: nil
    t.varchar "follow_up_flag", limit: 1
    t.datetime "follow_up_date", precision: nil
    t.varchar "follow_up_by_code", limit: 25
    t.integer "follow_up_by_id"
    t.varchar "follow_up_remark", limit: 200
    t.datetime "next_follow_up_date", precision: nil
    t.varchar "next_follow_up_task", limit: 25
    t.varchar "subject", limit: 25
    t.varchar "vrm_contact_name", limit: 100
    t.varchar "vendor_contact_name", limit: 100
    t.varchar "ref_no", limit: 18
    t.datetime "ref_date", precision: nil
    t.varchar "ref_type", limit: 1
    t.varchar "close_task_description", limit: 200
    t.integer "closed_by_id"
    t.varchar "closed_by_code", limit: 25
    t.varchar "start_hour", limit: 2
    t.varchar "start_minute", limit: 2
    t.varchar "start_date_time_format", limit: 2
    t.varchar "end_hour", limit: 2
    t.varchar "end_minute", limit: 2
    t.varchar "end_date_time_format", limit: 2
    t.datetime "close_date", precision: nil
    t.varchar "close_hour", limit: 2
    t.varchar "close_minute", limit: 2
    t.varchar "close_date_time_format", limit: 2
    t.varchar "timezone", limit: 10
    t.varchar "close_timezone", limit: 10
    t.varchar "close_status", limit: 50
    t.varchar "trans_bk", limit: 4
    t.varchar "trans_no", limit: 18
    t.varchar "send_invitation", limit: 1
    t.varchar "regarding", limit: 100
    t.varchar "send_email", limit: 1
    t.varchar "ref_bk", limit: 4
    t.varchar "vrm_remark", limit: 50
  end

  create_table "warehouses", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 25, null: false
    t.varchar "name", limit: 50
    t.varchar "updated_by_code", limit: 25
    t.varchar "production_location", limit: 50
    t.varchar "floor_location", limit: 50
    t.integer "floor_location_id"
    t.integer "production_location_id"
  end

  create_table "warnings", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.char "update_flag", limit: 1, default: "Y"
    t.char "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.char "code", limit: 25, null: false
    t.varchar "name", limit: 200
    t.varchar "warning_text", limit: 500
    t.varchar "updated_by_code", limit: 25
  end

  create_table "workflow_locations", id: :integer, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "code", limit: 50
    t.varchar "component_path", limit: 100
    t.index ["code"], name: "AK_workflow_location_code"
  end

  create_table "zip_codes", id: :integer, force: :cascade do |t|
    t.integer "company_id", default: 1, null: false
    t.varchar "update_flag", limit: 1, default: "Y"
    t.varchar "trans_flag", limit: 1, default: "A"
    t.integer "lock_version", default: 0
    t.varchar "zip_code", limit: 25, null: false
    t.varchar "state_code", limit: 25, null: false
    t.varchar "state_name", limit: 100, null: false
    t.varchar "city", limit: 100, null: false
    t.char "country_code", limit: 25, null: false
    t.varchar "country_name", limit: 100, null: false
    t.index ["zip_code"], name: "idx_zip_codes_zip_code"
  end

end
