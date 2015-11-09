class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all

    # do i need this?
    # @user_notes = User.notes.all
  end

  def show
  end

  def create
    @note = Note.create(note_params)
    # redirect to user home?
    @note.users_id = current_user.id
    redirect_to notes_path
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def update
    @note.update_attributes(note_params)
    redirect_to notes_path
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end


  # STRONG PARAMS/////////////////////////////////////////////////////////////////////////////

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:keyword, :content, :subject_name, :published_by)
  end
end
