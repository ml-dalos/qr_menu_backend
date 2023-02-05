require_relative "application_seed"

class ClientSeed < ApplicationSeed
  PASSWORD = "Cool_and_StR0000OOONg_pa55Word".freeze
  TRIAL_TIME = 100.days

  def initialize(params: {})
    @title = "Clients"
    @total = DEFAULT_AMOUNT * 4
    super
  end

  def call
    Client.destroy_all
    DEFAULT_AMOUNT.times do |i|
      create_active_trial_client(i)
      create_inactive_trial_client(i)
      create_active_not_trial_client(i)
      create_inactive_not_trial_client(i)
    end
  end

  private

  def create_active_trial_client(i)
    Client.create(
      active: true,
      trial: true,
      created_at: Time.zone.today - i.days,
      updated_at: Time.zone.today - i.days,
      email: Faker::Internet.unique.email,
      uuid: Faker::Internet.unique.uuid,
      name: Faker::Company.unique.name,
      password: PASSWORD,
      password_confirmation: PASSWORD,
      trial_started_at: Time.zone.today - i.days,
      trial_finished_at: Time.zone.today - i.days + TRIAL_TIME
    )
    progress_bar.increment
  end

  def create_inactive_trial_client(i)
    Client.create(
      active: false,
      trial: true,
      created_at: Time.zone.today - i.days,
      updated_at: Time.zone.today - i.days,
      email: Faker::Internet.unique.email,
      uuid: Faker::Internet.unique.uuid,
      name: Faker::Company.unique.name,
      password: PASSWORD,
      password_confirmation: PASSWORD,
      trial_started_at: Time.zone.today - i.days,
      trial_finished_at: Time.zone.today - i.days + TRIAL_TIME,
      suspended_at: Time.zone.today - i.days + 3.days
    )
    progress_bar.increment
  end

  def create_active_not_trial_client(i)
    Client.create(
      active: true,
      trial: false,
      created_at: Time.zone.today - i.days,
      updated_at: Time.zone.today - i.days,
      email: Faker::Internet.unique.email,
      uuid: Faker::Internet.unique.uuid,
      name: Faker::Company.unique.name,
      password: PASSWORD,
      password_confirmation: PASSWORD,
      trial_started_at: Time.zone.today - i.days,
      trial_finished_at: Time.zone.today - i.days
    )
    progress_bar.increment
  end

  def create_inactive_not_trial_client(i)
    Client.create(
      active: false,
      trial: false,
      created_at: Time.zone.today - i.days,
      updated_at: Time.zone.today - i.days,
      email: Faker::Internet.unique.email,
      uuid: Faker::Internet.unique.uuid,
      name: Faker::Company.unique.name,
      password: PASSWORD,
      password_confirmation: PASSWORD,
      trial_started_at: Time.zone.today - i.days,
      trial_finished_at: Time.zone.today - i.days,
      suspended_at: Time.zone.today - i.days + 3.days
    )
    progress_bar.increment
  end
end
