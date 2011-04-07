
class Waiter
  def initialize(opts)
    @wait = opts['wait'].to_i
    @logger = TorqueBox::Logger.new(self.class)
  end
  def start
    log "starting"
    run
  end
  def run
    Thread.new do
      while !@stopped do
        log "time=#{Time.now}"
        sleep @wait
        wherearemystupiderrors
      end
      log "stopped waiting #@wait seconds"
    end
  end
  def stop
    log "stopping"
    @stopped = true
  end
  def log(msg)
    @logger.info(msg)
  end
end
