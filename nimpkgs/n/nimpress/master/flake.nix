{
  description = ''Calculate polygenic scores from VCFs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpress-master.flake = false;
  inputs.src-nimpress-master.ref   = "refs/heads/master";
  inputs.src-nimpress-master.owner = "mpinese";
  inputs.src-nimpress-master.repo  = "nimpress";
  inputs.src-nimpress-master.type  = "github";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_7_0";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts".owner = "nim-nix-pkgs";
  inputs."hts".ref   = "master";
  inputs."hts".repo  = "hts";
  inputs."hts".dir   = "v0_3_23";
  inputs."hts".type  = "github";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lapper".owner = "nim-nix-pkgs";
  inputs."lapper".ref   = "master";
  inputs."lapper".repo  = "lapper";
  inputs."lapper".dir   = "v0_1_7";
  inputs."lapper".type  = "github";
  inputs."lapper".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpress-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimpress-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}