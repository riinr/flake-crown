{
  description = ''Spurdification library and CLI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spurdify-v0_0_6.flake = false;
  inputs.src-spurdify-v0_0_6.owner = "paradox460";
  inputs.src-spurdify-v0_0_6.ref   = "refs/tags/v0.0.6";
  inputs.src-spurdify-v0_0_6.repo  = "spurdify";
  inputs.src-spurdify-v0_0_6.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spurdify-v0_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spurdify-v0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}