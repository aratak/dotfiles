
IRB.conf[:PROMPT_MODE] = :SIMPLE

def show_sql
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
