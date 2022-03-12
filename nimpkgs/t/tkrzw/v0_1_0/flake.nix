{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tkrzw-v0_1_0.flake = false;
  inputs.src-tkrzw-v0_1_0.owner = "~ehmry";
  inputs.src-tkrzw-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-tkrzw-v0_1_0.repo  = "nim-tkrzw";
  inputs.src-tkrzw-v0_1_0.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tkrzw-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tkrzw-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}