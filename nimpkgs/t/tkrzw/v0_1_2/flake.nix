{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tkrzw-v0_1_2.flake = false;
  inputs.src-tkrzw-v0_1_2.owner = "~ehmry";
  inputs.src-tkrzw-v0_1_2.ref   = "v0.1.2";
  inputs.src-tkrzw-v0_1_2.repo  = "nim-tkrzw";
  inputs.src-tkrzw-v0_1_2.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tkrzw-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tkrzw-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}