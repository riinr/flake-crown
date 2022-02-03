{
  description = ''Monitor the state and memory of processes and URL response.'';
  inputs.src-sermon-v0_2_7.flake = false;
  inputs.src-sermon-v0_2_7.type = "github";
  inputs.src-sermon-v0_2_7.owner = "ThomasTJdev";
  inputs.src-sermon-v0_2_7.repo = "nim_sermon";
  inputs.src-sermon-v0_2_7.ref = "refs/tags/v0.2.7";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-sermon-v0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sermon-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sermon-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}