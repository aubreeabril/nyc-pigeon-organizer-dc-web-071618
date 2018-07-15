def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(category, trait), new_list|
    trait.each do |value, names|
      names.each do |name|
        new_list[name] ||= {}
        new_list[name][category] ||= []
        new_list[name][category] << value.to_s
      end
    end
  end
end
