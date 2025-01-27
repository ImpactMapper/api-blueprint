module ApiBlueprint::Collect::Storage
  def self.tmp_path
    Rails.root.join('tmp')
  end

  def self.request_dumps
    Dir[tmp_path.join('api_blueprint_request_*.yml').to_s].sort
  end

  def self.spec_dump
    tmp_path.join('api_blueprint_spec.yml')
  end

  def self.request_dump
    tmp_path.join(
      "api_blueprint_request_#{(Time.now.to_f * 1000).to_i}_#{sprintf("%09d", rand(1e9))}.yml")
  end
end
