{
  description = ''objective-c runtime bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-objc_runtime-master.flake = false;
  inputs.src-objc_runtime-master.ref   = "refs/heads/master";
  inputs.src-objc_runtime-master.owner = "bung87";
  inputs.src-objc_runtime-master.repo  = "objc_runtime";
  inputs.src-objc_runtime-master.type  = "github";
  
  inputs."darwin".owner = "nim-nix-pkgs";
  inputs."darwin".ref   = "master";
  inputs."darwin".repo  = "darwin";
  inputs."darwin".dir   = "master";
  inputs."darwin".type  = "github";
  inputs."darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_19_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-objc_runtime-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-objc_runtime-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}