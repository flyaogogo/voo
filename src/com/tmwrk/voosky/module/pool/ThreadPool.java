package com.tmwrk.voosky.module.pool;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Service;

/** 
 * 线程池服务类 
 *  
 * @author wfluo
 * @version 2014.08.03
 */
@Service
public class ThreadPool
{
	/** 
	 * 默认线程池大小 
	 */
	public static final int DEFAULT_POOL_SIZE = 5;

	/** 
	 * 默认一个任务的超时时间，单位为毫秒 
	 */
	public static final long DEFAULT_TASK_TIMEOUT = 1000;

	private int poolSize = DEFAULT_POOL_SIZE;
	private ExecutorService executorService;

	public ThreadPool()
	{
		this(100);
	}

	/** 
	 * 根据给定大小创建线程池 
	 */
	public ThreadPool(int poolSize)
	{
		setPoolSize(poolSize);
	}

	/** 
	 * 使用线程池中的线程来执行任务 
	 */
	public void execute(Runnable task)
	{
		executorService.execute(task);
	}

	/** 
	 * 关闭当前ExecutorService 
	 *  
	 * @param timeout 以毫秒为单位的超时时间 
	 */
	public void destoryExecutorService(long timeout)
	{
		if (executorService != null && !executorService.isShutdown())
		{
			try
			{
				executorService.awaitTermination(timeout, TimeUnit.MILLISECONDS);
			}
			catch (InterruptedException e)
			{
				e.printStackTrace();
			}
			executorService.shutdown();
		}
	}

	/** 
	 * 关闭当前ExecutorService，随后根据poolSize创建新的ExecutorService 
	 */
	public void createExecutorService()
	{
		destoryExecutorService(1000);
		executorService = Executors.newFixedThreadPool(poolSize);
	}

	/** 
	 * 调整线程池大小 
	 * @see #createExecutorService() 
	 */
	public void setPoolSize(int poolSize)
	{
		this.poolSize = poolSize;
		createExecutorService();
	}
}
