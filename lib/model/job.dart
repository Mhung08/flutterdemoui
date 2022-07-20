class Job {
  const Job.pure() : this('', '', 0, 0, 0);

  const Job(
      this.title, this.content, this.level, this.progress, this.maxProgress);

  final String title;
  final String content;
  final int level;
  final int progress;
  final int maxProgress;
}
