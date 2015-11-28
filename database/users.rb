module Users
  
  def self.get_by_id(uid)
    $database.with do |db|
      result = db.query("SELECT * FROM users WHERE id='#{uid.to_i}'").to_a
      return nil if result.count == 0
      return result[0].to_h
    end
  end
  
end