{
  description = ''A library to retrieve the list of commonly used licenses from the SPDX License List.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spdx_licenses-v1_0_0.flake = false;
  inputs.src-spdx_licenses-v1_0_0.owner = "euantorano";
  inputs.src-spdx_licenses-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-spdx_licenses-v1_0_0.repo  = "spdx_licenses.nim";
  inputs.src-spdx_licenses-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spdx_licenses-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spdx_licenses-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}