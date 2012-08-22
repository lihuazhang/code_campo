class Admin::TopicsController < Admin::BaseController
  before_filter :find_topic, :except => :index

  def index
    @topics = Topic.order_by([:created_at, :desc]).page(params[:page])
  end

  def show
  end

  def edit
  end

  def update
    @topic.set_edited_at

    if @topic.update_attributes params[:topic]
      redirect_to :action => :show
    else
      render :edit
    end
  end


  def destroy
    @topic.destroy
    flash[:success] = I18n.t('admin.topics.destroy.delete_success', :title => @topic.title)
    redirect_to :action => :index
  end

  protected

  def find_topic
    @topic = Topic.number(params[:id])
  end
end
