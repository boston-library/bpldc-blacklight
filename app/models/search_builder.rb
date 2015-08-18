class SearchBuilder < Blacklight::SearchBuilder
  include Blacklight::Solr::SearchBuilderBehavior

  # limit to a specific institution
  def institution_limit(solr_parameters = {})
    solr_parameters[:fq] ||= []
    solr_parameters[:fq] << '+institution_pid_ssi:"' + CommonwealthVlrEngine.config[:institution][:pid] + '"'
  end

end
