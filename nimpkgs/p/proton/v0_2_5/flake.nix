{
  description = ''Proton template engine for xml and xhtml files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-proton-v0_2_5.flake = false;
  inputs.src-proton-v0_2_5.owner = "jasonrbriggs";
  inputs.src-proton-v0_2_5.ref   = "refs/tags/v0.2.5";
  inputs.src-proton-v0_2_5.repo  = "proton-nim";
  inputs.src-proton-v0_2_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-proton-v0_2_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-proton-v0_2_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}