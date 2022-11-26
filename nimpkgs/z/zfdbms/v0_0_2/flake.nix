{
  description = ''Simple database generator, connector and query tools.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfdbms-v0_0_2.flake = false;
  inputs.src-zfdbms-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-zfdbms-v0_0_2.owner = "zendbit";
  inputs.src-zfdbms-v0_0_2.repo  = "nim.zfdbms";
  inputs.src-zfdbms-v0_0_2.type  = "github";
  
  inputs."stdext".owner = "nim-nix-pkgs";
  inputs."stdext".ref   = "master";
  inputs."stdext".repo  = "stdext";
  inputs."stdext".dir   = "v0_0_14";
  inputs."stdext".type  = "github";
  inputs."stdext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfdbms-v0_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zfdbms-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}