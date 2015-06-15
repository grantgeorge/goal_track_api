module V1
  class RemindersController < ApplicationController
    before_action :set_reminder, only: [:show, :update, :destroy]

    # GET /reminders
    # GET /reminders.json
    def index
      reminders = Reminder.all

      render json: reminders, each_serializer: V1::RemindersSerializer
    end

    # GET /reminders/1
    # GET /reminders/1.json
    def show
      render json: reminder, serializer: V1::ReminderSerializer
    end

    # POST /reminders
    # POST /reminders.json
    def create
      reminder = Reminder.new(reminder_params)

      if reminder.save
        render json: reminder, status: :created, location: reminder, serializer: V1::ReminderSerializer
      else
        render json: reminder.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /reminders/1
    # PATCH/PUT /reminders/1.json
    def update
      reminder = Reminder.find(params[:id])

      if reminder.update(reminder_params)
        head :no_content
      else
        render json: reminder.errors, status: :unprocessable_entity
      end
    end

    # DELETE /reminders/1
    # DELETE /reminders/1.json
    def destroy
      reminder.destroy

      head :no_content
    end

    private

      def set_reminder
        reminder = Reminder.find(params[:id])
      end

      def reminder_params
        params.require(:reminder).permit(:name, :description, :starts_at, :ends_at)
      end
  end
end
