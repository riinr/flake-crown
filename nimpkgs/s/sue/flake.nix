{
  description = ''Executes a program as a user different from the user running `sue`. The target program is `exec`'ed which means, that it replaces the `sue` process you are using to run the target program. This simulates native tools like `su` and `sudo` and uses the same low-level POSIX tools to achieve that, but eliminates common issues that usually arise, when using those native tools.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sue-master".url = "path:./master";
  inputs."sue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}