{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-0_0_22.flake = false;
  inputs.src-zfplugs-0_0_22.owner = "zendbit";
  inputs.src-zfplugs-0_0_22.ref   = "refs/tags/0.0.22";
  inputs.src-zfplugs-0_0_22.repo  = "nim.zfplugs";
  inputs.src-zfplugs-0_0_22.type  = "github";
  
  inputs."zfcore".dir   = "nimpkgs/z/zfcore";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".ref   = "flake-pinning";
  inputs."zfcore".repo  = "flake-nimble";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-0_0_22"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-0_0_22";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}