require "../../../spec/support/factories/**"

# Add sample data helpful for development, e.g. (fake users, blog posts, etc.)
#
# Use `Db::Seed::RequiredData` if you need to create data *required* for your
# app to work.
class Db::Seed::SampleData < LuckyTask::Task
  summary "Add sample database records helpful for development"

  def call
    # Using an Avram::Factory:
    #
    # Use the defaults, but override just the email
    # UserFactory.create &.email("me@example.com")

    # Using a SaveOperation:
    # ```
    # SignUpUser.create!(email: "me@example.com", password: "test123", password_confirmation: "test123")
    # ```
    #
    # You likely want to be able to run this file more than once. To do that,
    # only create the record if it doesn't exist yet:
    # ```
    # if UserQuery.new.email("me@example.com").none?
    #   SignUpUser.create!(email: "me@example.com", password: "test123", password_confirmation: "test123")
    # end
    # ```

    # SaveAlpha.create!({"name" => "Alpha 1", "beta" => {"content" => "Beta 1"}})
    # SaveAlpha.create!(name: "Alpha 1", beta: {content: "Beta 1"})

    # would love to have
    SaveCharlie.create!(name: "Charlie 1", delta: {content: "Delta 1"})

    # I think this is the closest api you can get
    charlie = SaveCharlie.new(content: "Charlie 1")
    SaveDelta.create!(content: "Delta 1", charlie: charlie)

    puts "Done adding sample data"
  end
end
