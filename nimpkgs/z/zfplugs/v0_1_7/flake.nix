{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-v0_1_7.flake = false;
  inputs.src-zfplugs-v0_1_7.owner = "zendbit";
  inputs.src-zfplugs-v0_1_7.ref   = "refs/tags/v0.1.7";
  inputs.src-zfplugs-v0_1_7.repo  = "nim.zfplugs";
  inputs.src-zfplugs-v0_1_7.type  = "github";
  
  inputs."zfdbms".dir   = "nimpkgs/z/zfdbms";
  inputs."zfdbms".owner = "riinr";
  inputs."zfdbms".ref   = "flake-pinning";
  inputs."zfdbms".repo  = "flake-nimble";
  inputs."zfdbms".type  = "github";
  inputs."zfdbms".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore".dir   = "nimpkgs/z/zfcore";
  inputs."zfcore".owner = "riinr";
  inputs."zfcore".ref   = "flake-pinning";
  inputs."zfcore".repo  = "flake-nimble";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu".dir   = "nimpkgs/m/moustachu";
  inputs."moustachu".owner = "riinr";
  inputs."moustachu".ref   = "flake-pinning";
  inputs."moustachu".repo  = "flake-nimble";
  inputs."moustachu".type  = "github";
  inputs."moustachu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v0_1_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-v0_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}