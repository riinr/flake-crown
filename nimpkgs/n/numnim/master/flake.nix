{
  description = ''A numpy like ndarray and dataframe library for nim-lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-numnim-master.flake = false;
  inputs.src-numnim-master.owner = "YesDrX";
  inputs.src-numnim-master.ref   = "refs/heads/master";
  inputs.src-numnim-master.repo  = "numnim";
  inputs.src-numnim-master.type  = "github";
  
  inputs."nimblas".owner = "nim-nix-pkgs";
  inputs."nimblas".ref   = "master";
  inputs."nimblas".repo  = "nimblas";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack".owner = "nim-nix-pkgs";
  inputs."nimlapack".ref   = "master";
  inputs."nimlapack".repo  = "nimlapack";
  inputs."nimlapack".type  = "github";
  inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-numnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-numnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}