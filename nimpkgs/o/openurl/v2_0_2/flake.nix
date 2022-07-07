{
  description = ''Open Any Url/File in the default desktop App / WebBrowser!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openurl-v2_0_2.flake = false;
  inputs.src-openurl-v2_0_2.ref   = "refs/tags/v2.0.2";
  inputs.src-openurl-v2_0_2.owner = "foxoman";
  inputs.src-openurl-v2_0_2.repo  = "openurl";
  inputs.src-openurl-v2_0_2.type  = "github";
  
  inputs."figures".owner = "nim-nix-pkgs";
  inputs."figures".ref   = "master";
  inputs."figures".repo  = "figures";
  inputs."figures".dir   = "v1_2_0";
  inputs."figures".type  = "github";
  inputs."figures".inputs.nixpkgs.follows = "nixpkgs";
  inputs."figures".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openurl-v2_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-openurl-v2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}