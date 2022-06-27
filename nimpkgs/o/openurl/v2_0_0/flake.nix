{
  description = ''Open Any Url/File in the default desktop App / WebBrowser!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openurl-v2_0_0.flake = false;
  inputs.src-openurl-v2_0_0.ref   = "refs/tags/v2.0.0";
  inputs.src-openurl-v2_0_0.owner = "foxoman";
  inputs.src-openurl-v2_0_0.repo  = "openurl";
  inputs.src-openurl-v2_0_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openurl-v2_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-openurl-v2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}