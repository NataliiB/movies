class FilmsController < ApplicationController
  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    binding.pry
    @category =Category.find(params[:id])
    # @film = @category.films.create(params[title: [:film][:title],
    #                                 description: [:film][:description],
    #                                       image: [:film][:image],
    #                                      actors: [:film][:actors],
    #                                imdb_raiting: [:film][:imdb_raiting]
    # category_id: [:film]
    #
    # ])

    redirect_to @category

    if @film.save
      redirect_to @film
    else
      render :new, status: :unprocessable_entity
    end

  end

  def films_by_category
    @category = Category.find(params[:category_id])
    @films = @category.films
  end

  def destroy

  end




  def update

  end

  private

  def film_params
    params.require(:film).permit(:title, :description, :image, :actors, :imdb_raiting, :category_id)
  end

end
