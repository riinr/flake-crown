{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
  inputs.src-nimquery-v1_2_0.flake = false;
  inputs.src-nimquery-v1_2_0.type = "github";
  inputs.src-nimquery-v1_2_0.owner = "GULPF";
  inputs.src-nimquery-v1_2_0.repo = "nimquery";
  inputs.src-nimquery-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, src-nimquery-v1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimquery-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}