{
  description = ''Image manipulation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imageman-v0_6_2.flake = false;
  inputs.src-imageman-v0_6_2.owner = "SolitudeSF";
  inputs.src-imageman-v0_6_2.ref   = "refs/tags/v0.6.2";
  inputs.src-imageman-v0_6_2.repo  = "imageman";
  inputs.src-imageman-v0_6_2.type  = "github";
  
  inputs."stb_image".dir   = "nimpkgs/s/stb_image";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".ref   = "flake-pinning";
  inputs."stb_image".repo  = "flake-nimble";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imageman-v0_6_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imageman-v0_6_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}