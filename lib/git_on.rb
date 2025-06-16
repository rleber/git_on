# frozen_string_literal: true

require_relative "git_on/version"

module GitOn
  def self.status(directory = nil)
    return {git: :uninstalled} unless system("git -v &> /dev/null")
    directory ||= File.dirname(caller_locations[0].path)
    status_result = `cd '#{dir}' &> /dev/null; git status 2> /dev/null`
    return {git: :inactive} unless $?.success?
    return {git: :active, branch: nil} unless status_result =~ /On\s+branch\s+(\w+)/
    {git: :active, branch: $1}
  end
end
