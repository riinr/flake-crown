{
  description = ''mConnect Standardised Response Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcresponse-v0_2_0.flake = false;
  inputs.src-mcresponse-v0_2_0.owner = "abbeymart";
  inputs.src-mcresponse-v0_2_0.ref   = "v0_2_0";
  inputs.src-mcresponse-v0_2_0.repo  = "mcresponse-nim";
  inputs.src-mcresponse-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcresponse-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mcresponse-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}