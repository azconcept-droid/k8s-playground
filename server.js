// endpoint to monitor liveness of pods
app.get("/healthz", (req, res, next) => {
  res.status(200).json({ message: "healthy" });
});
