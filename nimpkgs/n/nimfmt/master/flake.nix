{
  description = ''Nim restyling tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimfmt-master.flake = false;
  inputs.src-nimfmt-master.ref   = "refs/heads/master";
  inputs.src-nimfmt-master.owner = "FedericoCeratto";
  inputs.src-nimfmt-master.repo  = "nimfmt";
  inputs.src-nimfmt-master.type  = "github";
  
  inputs."compiler".owner = "nim-nix-pkgs";
  inputs."compiler".ref   = "master";
  inputs."compiler".repo  = "compiler";
  inputs."compiler".dir   = "v1_6_4";
  inputs."compiler".type  = "github";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimfmt-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimfmt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}