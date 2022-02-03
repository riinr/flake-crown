{
  description = ''Directory listing tool'';
  inputs.src-lq-1_0_0.flake = false;
  inputs.src-lq-1_0_0.type = "github";
  inputs.src-lq-1_0_0.owner = "madprops";
  inputs.src-lq-1_0_0.repo = "lq";
  inputs.src-lq-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."nap".url = "path:../../../n/nap";
  inputs."nap".type = "github";
  inputs."nap".owner = "riinr";
  inputs."nap".repo = "flake-nimble";
  inputs."nap".ref = "flake-pinning";
  inputs."nap".dir = "nimpkgs/n/nap";

  
  inputs."parsetoml".url = "path:../../../p/parsetoml";
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-lq-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lq-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lq-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}