{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-0_0_23.flake = false;
  inputs.src-zfplugs-0_0_23.ref   = "refs/tags/0.0.23";
  inputs.src-zfplugs-0_0_23.owner = "zendbit";
  inputs.src-zfplugs-0_0_23.repo  = "nim.zfplugs";
  inputs.src-zfplugs-0_0_23.type  = "github";
  
  inputs."zfcore".owner = "nim-nix-pkgs";
  inputs."zfcore".ref   = "master";
  inputs."zfcore".repo  = "zfcore";
  inputs."zfcore".dir   = "v1_1_7";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-0_0_23"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-0_0_23";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}