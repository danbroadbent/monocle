class Admin::NotesController < ApplicationController
  before_action :verify_admin
  
  def edit
    @note = Note.find(params[:company_id])
  end
  
  def update
    note = Note.find(params[:company_id])
    company = Company.find(params[:id])
    if note.update(note_params)
      flash[:success] = "Note updated successfully"
      redirect_to company_path(company)
    else
      flash.now[:danger] = note.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    note = Note.find(params[:company_id])
    company = Company.find(params[:id])
    if note.destroy
      flash[:success] = "Note deleted successfully"
      redirect_to company_path(company)
    else
      flash.now[:danger] = note.errors.full_messages
      redirect_to company_path(company)
    end
  end
  
  private
  
  def note_params
    params.require(:note).permit(:title, :body, :company_id)
  end
end