{
  description = ''minimal jinja like experiment'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nwt-master.flake = false;
  inputs.src-nwt-master.ref   = "refs/heads/master";
  inputs.src-nwt-master.owner = "enthus1ast";
  inputs.src-nwt-master.repo  = "nimWebTemplates";
  inputs.src-nwt-master.type  = "github";
  
  inputs."github-enthus1ast-nimcommandparser".owner = "nim-nix-pkgs";
  inputs."github-enthus1ast-nimcommandparser".ref   = "master";
  inputs."github-enthus1ast-nimcommandparser".repo  = "github-enthus1ast-nimcommandparser";
  inputs."github-enthus1ast-nimcommandparser".dir   = "master";
  inputs."github-enthus1ast-nimcommandparser".type  = "github";
  inputs."github-enthus1ast-nimcommandparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-enthus1ast-nimcommandparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nwt-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nwt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}