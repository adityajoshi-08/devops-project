export default function Error({ error, reset }) {
  return (
    <div>
      <h1>Something went wrong!</h1>
      <p>{error?.message || 'An unexpected error occurred.'}</p>
      <button onClick={() => reset()}>Try Again</button>
    </div>
  );
}
