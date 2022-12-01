defmodule Newsletter do
  def read_emails(path) do
    path
    |> File.read!()
    |> String.split()
  end

  def open_log(path) do
   File.open!(path, [:write])
  end

  def log_sent_email(pid, email) do
    IO.write(pid, email <> "\n")
  end

  def close_log(pid) do
    File.close(pid)
  end

  def send_newsletter(emails_path, log_path, send_fun) do
        emails = read_emails(emails_path)
    logs = open_log(log_path)
    for email <- emails do
      res = send_fun.(email)
      if res == :ok do
        log_sent_email(logs, email)
      end
    end
    close_log(logs)
    :ok

  end
end
