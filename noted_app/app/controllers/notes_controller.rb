class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Notes.all

    # do i need this?
    @user_notes = User.notes.all
  end

  def show
  end




  # STRONG PARAMS/////////////////////////////////////////////////////////////////////////////

  def set_note
    @note = Note.find(params[:id])
  end
end
