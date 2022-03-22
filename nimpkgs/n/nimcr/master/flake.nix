{
  description = ''Simple program that allows you to use the shebang #!nimcr in your Nim files. It will automatically compile the file to a hidden executable in the same directory as the nim file as long as the file doesn't already exist and is younger than (ie. created after the last modification of) the script file. If it is younger it will simply run the executable saving you from compiling the script each time it is run. The output of the compiler is also ignored if the compilation is succesfull and only the output of the program is used. If the compilation fails the output will be written to stderr and the return code will match that of the compiler.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcr-master.flake = false;
  inputs.src-nimcr-master.ref   = "refs/heads/master";
  inputs.src-nimcr-master.owner = "PMunch";
  inputs.src-nimcr-master.repo  = "nimcr";
  inputs.src-nimcr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}