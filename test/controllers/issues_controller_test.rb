require "test_helper"

class IssuesControllerTest < ActionDispatch::IntegrationTest
  test "blueprinter test" do
    Benchmark.bmbm do |b|

      b.report('panko') {
        get '/panko', as: :json
      }

      b.report('blueprinter') {
        get '/blueprinter', as: :json
      }

      b.report('fastjsonapi') {
        get '/fastjsonapi', as: :json
      }

      b.report('jbuilder') {
        get '/jbuilder', as: :json
      }

      b.report('rabl') {
        get '/rabl', as: :json
      }
    end

    %i[ips memory].each do |bench|
      Benchmark.send(bench) do |b|
        b.config(time: 10, warmup: 5, stats: :bootstrap, confidence: 95) if b.respond_to?(:config)

        b.report('panko') {
          get '/panko', as: :json
        }

        b.report('blueprinter') {
          get '/blueprinter', as: :json
        }

        b.report('fastjsonapi') {
          get '/fastjsonapi', as: :json
        }

        b.report('jbuilder') {
          get '/jbuilder', as: :json
        }

        b.report('rabl') {
          get '/rabl', as: :json
        }

        b.compare!
      end
    end

  end

  def call_blueprinter

  end
end