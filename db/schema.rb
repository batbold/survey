# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150501031036) do

  create_table "answer_options", force: :cascade do |t|
    t.string   "answer_value", limit: 50,             null: false
    t.integer  "order_no",     limit: 4,  default: 0, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "amount",       limit: 4,  default: 0, null: false
    t.integer  "question_id",  limit: 4
    t.integer  "survey_id",    limit: 4
    t.integer  "is_scale",     limit: 4,  default: 0, null: false
    t.integer  "scale_weight", limit: 4,  default: 0, null: false
  end

  create_table "answer_types", force: :cascade do |t|
    t.string   "name",         limit: 50,   null: false
    t.string   "descrtiption", limit: 1000, null: false
    t.integer  "active",       limit: 4,    null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 40
    t.string   "last_name",  limit: 40
    t.string   "email",      limit: 40
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "diagram", force: :cascade do |t|
    t.string  "dDesc",    limit: 500, null: false
    t.integer "qone",     limit: 4,   null: false
    t.integer "qwo",      limit: 4
    t.integer "qThree",   limit: 4
    t.integer "typeCode", limit: 4,   null: false
    t.integer "sid",      limit: 4,   null: false
  end

  create_table "diagramtype", force: :cascade do |t|
    t.string  "caption",    limit: 100, null: false
    t.string  "captioneng", limit: 100, null: false
    t.integer "typeCode",   limit: 4,   null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "newsTitle",    limit: 80,                null: false
    t.string   "newsvalue",    limit: 20000,             null: false
    t.datetime "createdDate",                            null: false
    t.datetime "dateModified",                           null: false
    t.integer  "catID",        limit: 4,                 null: false
    t.integer  "userid",       limit: 4,                 null: false
    t.integer  "userip",       limit: 4,                 null: false
    t.integer  "readCount",    limit: 4,     default: 0, null: false
  end

  create_table "newscategory", primary_key: "listorder", force: :cascade do |t|
    t.string "name",  limit: 60, null: false
    t.string "name2", limit: 60, null: false
  end

  create_table "pamsg", force: :cascade do |t|
    t.string "strMon", limit: 500, null: false
    t.string "strEng", limit: 500, null: false
  end

  create_table "question", force: :cascade do |t|
    t.integer "qid",        limit: 4,                null: false
    t.integer "sid",        limit: 4
    t.string  "fieldValue", limit: 2000
    t.integer "custID",     limit: 4
    t.integer "ansOptID",   limit: 4,    default: 0, null: false
    t.integer "isOther",    limit: 4,    default: 1, null: false
  end

  create_table "questionform", force: :cascade do |t|
    t.string   "qStr",              limit: 500,               null: false
    t.integer  "num",               limit: 4,   default: 0,   null: false
    t.integer  "typeCode",          limit: 4,                 null: false
    t.integer  "qLen",              limit: 4
    t.string   "format",            limit: 20
    t.integer  "qIsRequired",       limit: 4
    t.integer  "qIsOther",          limit: 4,                 null: false
    t.string   "qErrorMsg",         limit: 200,               null: false
    t.integer  "qOtherHasValidate", limit: 4,                 null: false
    t.string   "qOtherText",        limit: 500,               null: false
    t.integer  "qOtherFieldSize",   limit: 4,                 null: false
    t.string   "qMinValue",         limit: 100, default: "0", null: false
    t.string   "qMaxValue",         limit: 100,               null: false
    t.integer  "qOrder",            limit: 4
    t.integer  "sid",               limit: 4,                 null: false
    t.integer  "status",            limit: 4,   default: 1,   null: false
    t.datetime "dropDate",                                    null: false
    t.integer  "qColumnAmount",     limit: 4,   default: 0,   null: false
    t.integer  "qNA",               limit: 4,   default: 0,   null: false
    t.integer  "qScaleAmount",      limit: 4,   default: 0,   null: false
    t.integer  "qOneAnswer",        limit: 4,   default: 0,   null: false
    t.integer  "qFixedSum",         limit: 4,   default: 0
    t.string   "qFixedSumMsg",      limit: 200
  end

  create_table "report", force: :cascade do |t|
    t.string  "name",      limit: 100,  null: false
    t.integer "fileType",  limit: 4,    null: false
    t.string  "rptDesign", limit: 1000, null: false
    t.string  "rptSql",    limit: 1000, null: false
    t.string  "rptDesc",   limit: 100,  null: false
  end

  create_table "survey", force: :cascade do |t|
    t.string  "name",            limit: 500
    t.integer "num",             limit: 4,    default: 0,                                   null: false
    t.integer "u_id",            limit: 4
    t.date    "created",                                                                    null: false
    t.date    "modified",                                                                   null: false
    t.string  "tailan",          limit: 5000
    t.integer "styleID",         limit: 4,    default: 1,                                   null: false
    t.string  "colCloseMessage", limit: 400,  default: "Судалгаа хаалттай байна.",          null: false
    t.string  "colHappyMessage", limit: 400,  default: "Судалгааг бөглөсөнд баярлалаа",     null: false
    t.string  "colLink",         limit: 100
    t.string  "colShortLink",    limit: 40
    t.string  "colStartDate",    limit: 40
    t.integer "colStartHour",    limit: 4,                                                  null: false
    t.integer "colStartMinute",  limit: 4,                                                  null: false
    t.string  "colEndDate",      limit: 40
    t.integer "colEndHour",      limit: 4,                                                  null: false
    t.integer "colEndMinute",    limit: 4,                                                  null: false
    t.string  "colPassword",     limit: 40
    t.integer "colUniqueAnswer", limit: 4,    default: 0,                                   null: false
    t.integer "status",          limit: 4,                                                  null: false
    t.string  "surveyTtz",       limit: 200,  default: "(GMT+08:00) Irkutsk, Ulaan Bataar"
    t.integer "usePass",         limit: 4,                                                  null: false
  end

  add_index "survey", ["u_id"], name: "u_id", using: :btree

  create_table "surveystatus", id: false, force: :cascade do |t|
    t.integer  "id",          limit: 4, null: false
    t.integer  "strCaption",  limit: 4, null: false
    t.integer  "strBody",     limit: 4, null: false
    t.datetime "statusAdded",           null: false
  end

  create_table "surveystyle", force: :cascade do |t|
    t.string  "name",            limit: 40
    t.string  "headBackImage",   limit: 400
    t.string  "headBackColor",   limit: 40
    t.string  "headLogo",        limit: 400
    t.string  "headSize",        limit: 40
    t.string  "headLetterColor", limit: 40
    t.string  "headLetterSize",  limit: 40
    t.string  "headLetterFont",  limit: 40
    t.string  "midLetterColor",  limit: 40
    t.string  "midLetterFont",   limit: 40
    t.string  "midLetterSize",   limit: 40
    t.string  "midBackImage",    limit: 40
    t.string  "midBackColor",    limit: 40
    t.integer "status",          limit: 4
  end

  create_table "tracker", force: :cascade do |t|
    t.date    "date",                          null: false
    t.time    "time",                          null: false
    t.text    "ip",              limit: 65535, null: false
    t.text    "query_string",    limit: 65535, null: false
    t.text    "http_referer",    limit: 65535, null: false
    t.text    "http_user_agent", limit: 65535, null: false
    t.integer "isbot",           limit: 4,     null: false
    t.integer "surveyID",        limit: 4,     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",         limit: 255
    t.string   "uid",              limit: 255
    t.string   "name",             limit: 255
    t.string   "image",            limit: 255
    t.string   "email",            limit: 255
    t.string   "oauth_token",      limit: 255
    t.datetime "oauth_expires_at"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
