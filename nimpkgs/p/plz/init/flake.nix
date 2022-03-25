{
  description = ''PLZ Python PIP alternative'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plz-init.flake = false;
  inputs.src-plz-init.ref   = "refs/tags/init";
  inputs.src-plz-init.owner = "juancarlospaco";
  inputs.src-plz-init.repo  = "nim-pypi";
  inputs.src-plz-init.type  = "github";
  
  inputs."nimarchive".owner = "nim-nix-pkgs";
  inputs."nimarchive".ref   = "master";
  inputs."nimarchive".repo  = "nimarchive";
  inputs."nimarchive".dir   = "v0_5_4";
  inputs."nimarchive".type  = "github";
  inputs."nimarchive".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plz-init"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-plz-init";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}