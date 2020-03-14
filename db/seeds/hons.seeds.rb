file = Psych.load_file("db/seeds/hons.yml")
  file["hons"].each do |params|
    Hon.find_or_create_by(params)
  end