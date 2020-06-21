# frozen_string_literal: true

class CodeTutorialsController < ApplicationController
  def index
    @code_tutorials = CodeTutorial.all
  end

  def show
    set_code_tutorial
  end

  private

  def set_code_tutorial
    @code_tutorial = CodeTutorial.find(params[:id])
  end
end
