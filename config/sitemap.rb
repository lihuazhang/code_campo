# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://test-china.org"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/topics'

    add topics_path, :priority => 0.7, :changefreq => 'daily'
    add users_path, :priority => 0.7, :changefreq => 'daily'
    Topic.order_by([[:created_at, :desc]]).each do |topic|
      add topic_path(topic), :lastmod => topic.edited_at
    end

  # Add all topics:

    Topic.active.each do |topic|
      add topic_path(topic), :lastmod => topic.edited_at
    end
    Topic.active.each do |topic|
      add topic_path(topic), :lastmod => topic.edited_at
    end

end
